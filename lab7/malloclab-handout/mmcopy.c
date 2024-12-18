/*
 * mm.c
 *
 * name:张乐天
 * identity:2300012938
 * 
 */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>

#include "mm.h"
#include "memlib.h"

/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

#define DEBUG

#ifdef DEBUG
#define debug_printf printf
#endif

static int verbose = 0;

/*
 * If NEXT_FIT defined use next fit search, else use first-fit search 
 */
#define NEXT_FITx

/* Basic constants and macros */
#define WSIZE       4       /* Word and header/footer size (bytes) */ 
#define DSIZE       8       /* Double word size (bytes) */
#define CHUNKSIZE  (1<<12)  /* Extend heap by this amount (bytes) */  

#define MAX(x, y) ((x) > (y)? (x) : (y))  

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)  ((size) | (alloc)) 

/* Read and write a word at address p */
#define GET(p)       (*(unsigned int *)(p))            
#define PUT(p, val)  (*(unsigned int *)(p) = (val))    

/* Read the size and allocated fields from address p */
#define GET_SIZE(p)  (GET(p) & ~0x7)                   
#define GET_ALLOC(p) (GET(p) & 0x1)               

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)       ((char *)(bp) - WSIZE)                      
#define FTRP(bp)       ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE) 

/* Given free-block ptr bp, compute address of its prev and next*/
#define PREV(bp)            (bp)
#define NEXT(bp)            ((char *)(bp) + WSIZE)
#define PUT_PTR(ptr, bp)    (*(unsigned*)(ptr) = (unsigned)((long)((char*)bp - (char*)mem_heap_lo())))
/*only for displacement*/
#define PREV_BLKP(bp)       (mem_heap_lo() + GET(bp))
#define NEXT_BLKP(bp)       (mem_heap_lo() + GET((bp) + WSIZE))

/* Given block ptr bp, compute address of next and previous blocks */
// this is bacsed on size
#define SIZE_NEXT_BLKP(bp)  ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE))) 
#define SIZE_PREV_BLKP(bp)  ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE))) 

/* segregated blocks*/

#define S_BLOCK 16
//which are [8, 16, 24, 32, 64, 96, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768]

/* Global variables */
static char *heap_listp = 0;  /* Pointer to first block */  
static char *mem_start = 0;
static unsigned *block_start = 0;
/*
every time perform operation plus, the heap_listp will add the corresponding number
*/
#ifdef NEXT_FIT
static char *rover;           /* Next fit rover */
#endif

/* Function prototypes for internal helper routines */
static void *extend_heap(size_t words);
static void place(void *bp, size_t asize);
static void *find_fit(size_t asize);
static void *coalesce(void *bp);
void check(int lineno);
void place_ptr(void *bp);

/* 
 * mm_init - Initialize the memory manager 
 using segregated fill
 */


int mm_init(void) 
{
    /* Create the initial empty heap */
    ///my code here
    ///mem_heap_lo();
    heap_listp = mem_sbrk(DSIZE);/// empty block
    block_start = (void*)((char *)mem_heap_lo() + DSIZE);
    for(int i = 0; i < S_BLOCK; ++i)
    {
        heap_listp = mem_sbrk(WSIZE);
        if(heap_listp == (void *)-1) return -1;
        PUT(heap_listp, 0);
    }
    /// in conveince we only use the first chain to modify
    /// then extend it to 16 chains
    /// store the first 16 breakpoints
    if ((heap_listp = mem_sbrk(4 * WSIZE)) == (void *)-1) 
        return -1;
    mem_start = heap_listp;
    //printf("%p %p\n",heap_listp, mem_heap_hi());
    PUT(heap_listp, 0);                          /* Alignment padding */
    PUT(heap_listp + (1 * WSIZE), PACK(DSIZE, 1)); /* Prologue header */ 
    PUT(heap_listp + (2 * WSIZE), PACK(DSIZE, 1)); /* Prologue footer */ 
    PUT(heap_listp + (3 * WSIZE), PACK(0, 1));     /* Epilogue header */
    heap_listp += (2 * WSIZE);               
    check(119);
#ifdef NEXT_FIT
    rover = heap_listp;
#endif

    /* Extend the empty heap with a free block of CHUNKSIZE bytes */
    if (extend_heap(CHUNKSIZE/WSIZE) == NULL) 
        return -1;
    check(119);      
    return 0;
}
/*
for an allocated block, we need head and tail and payload
for an unallocated block, we need head and tail and next and prev
*/


// this size maybe changed due to the difference between the realsize or testding-data
//which are [8, 16, 24, 32, 64, 96, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768]
/*
    find the minimum size greater than x
*/
/*
generated by a C-program
*/
size_t find_size(int x)
{
	if(x == 0) return 12;
	if(x == 1) return 24;
	if(x == 2) return 32;
	if(x == 3) return 64;
	if(x == 4) return 80;
	if(x == 5) return 96;
	if(x == 6) return 120;
	if(x == 7) return 240;
	if(x == 8) return 360;
	if(x == 9) return 720;
	if(x == 10) return 1440;
	if(x == 11) return 2880;
	if(x == 12) return 5760;
	if(x == 13) return 11520;
	if(x == 14) return 23040;
	return -1;
}
size_t get_number(int x)
{
	if(x <= 12) return 0;
	if(x <= 24) return 1;
	if(x <= 32) return 2;
	if(x <= 64) return 3;
	if(x <= 80) return 4;
	if(x <= 96) return 5;
	if(x <= 120) return 6;
	if(x <= 240) return 7;
	if(x <= 360) return 8;
	if(x <= 720) return 9;
	if(x <= 1440) return 10;
	if(x <= 2880) return 11;
	if(x <= 5760) return 12;
	if(x <= 11520) return 13;
	if(x <= 23040) return 14;
	return 15;
}

/* 
 * malloc - Allocate a block with at least size bytes of payload 
 */
void *mm_malloc(size_t size) 
{
    if(verbose) debug_printf("SIZE: %lu\n",size);
    size_t asize;      /* Adjusted block size */
    size_t extendsize; /* Amount to extend heap if no fit */
    char *bp;      

    if (heap_listp == 0){
        mm_init();
    }
    /* Ignore spurious requests */
    if (size == 0)
        return NULL;

    /* Adjust block size to include overhead and alignment reqs. */
    if (size <= DSIZE)                                          
        asize = 2 * DSIZE;                                        
    else
        asize = DSIZE * ((size + (DSIZE) + (DSIZE-1)) / DSIZE); ///double word alignment

    if(verbose) debug_printf("malloc primitive = 0x%lx\n", size);
    /* Search the free list for a fit */
    if ((bp = find_fit(asize)) != NULL) {  
        place(bp, asize);              
        if(verbose) debug_printf("malloc completed %p, 0x%lx\n", bp, asize);          
        return bp;
    }

    /* No fit found. Get more memory and place the block */
    /// my code here
    extendsize = MAX(find_size(get_number(asize)), CHUNKSIZE);
    if(get_number(asize) == 15) extendsize = asize;
    if ((bp = extend_heap(extendsize/WSIZE)) == NULL)  
        return NULL;                                  
    place(bp, asize);     
    if(verbose) debug_printf("malloc completed %p, 0x%lx\n", bp, asize);                            
    return bp;
} 

/* 
 * free - Free a block 
 * just copy from textbook!
 */
void mm_free(void *bp)
{
    if(verbose) debug_printf("free %p\n", bp);
    if (bp == 0) 
        return;

    size_t size = GET_SIZE(HDRP(bp));
    if (heap_listp == 0){
        mm_init();
    }

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    place_ptr(bp);
    coalesce(bp);
    check(240);
}

/*
 * realloc - Naive implementation of realloc
 * just copy from the textbook
 */
void *realloc(void *ptr, size_t size)
{
    if(verbose) debug_printf("realloc 0x%lx\n", size);
    size_t oldsize;
    void *newptr;

    /* If size == 0 then this is just free, and we return NULL. */
    if(size == 0) {
        mm_free(ptr);
        return 0;
    }

    /* If oldptr is NULL, then this is just malloc. */
    if(ptr == NULL) {
        return mm_malloc(size);
    }

    newptr = mm_malloc(size);

    /* If realloc() fails the original block is left untouched  */
    if(!newptr) {
        return 0;
    }

    /* Copy the old data. */
    oldsize = GET_SIZE(HDRP(ptr));
    if(size < oldsize) oldsize = size;
    memcpy(newptr, ptr, oldsize);

    /* Free the old block. */
    mm_free(ptr);
    if(verbose) debug_printf("realloc %p -> %p, 0x%lx\n",ptr, newptr, size);
    check(277);
    return newptr;
}

static inline int check_align(void *p)
{
    unsigned x = (long)p;
    return (x & 7) == 0;
}

/* 
 * mm_checkheap - Check the heap for correctness. Helpful hint: You
 *                can call this function using mm_checkheap(__LINE__);
 *                to identify the line number of the call site.
*/
void mm_checkheap(int lineno)  
{ 
    /// my code here
    lineno = lineno; /* keep gcc happy */
    char *ptr = mem_start;
    //printf("%p\n", mem_heap_lo());
    if(GET(ptr) != 0)
    {
        debug_printf("Line[%d] : starting point error! pointer = %p\n", lineno, ptr);
    }
    if(GET(ptr + WSIZE) != PACK(DSIZE, 1))
    {
        debug_printf("Line[%d] : prolouge error! pointer = %p\n", lineno, ptr + WSIZE);
    }
    if(GET(ptr + DSIZE) != PACK(DSIZE, 1))
    {
        debug_printf("Line[%d] : prolouge error! pointer = %p\n", lineno, ptr + DSIZE);
    }
    ptr += DSIZE; /// check for blocks
    size_t is_allocated = 1;
    while(ptr < (char*)mem_heap_hi())
    {
        //printf("%p\n", ptr);
        if(check_align(ptr) == 0) 
        {
            debug_printf("Line[%d] : alignment error! pointer = %p\n", lineno, ptr);
        }
        if(GET_SIZE(HDRP(ptr)) <= 1)
        {
            debug_printf("Line[%d] : block size is too small! pointer = %p\n", lineno, ptr);
        }
        if(!is_allocated) ///there should not be two free blocks
        {
            if(!GET_ALLOC(HDRP(ptr)))
            {
                debug_printf("Line[%d] : two continuous free block! pointer = %p\n", lineno, ptr);
            }
            if(GET(HDRP(ptr)) != GET(FTRP(ptr)))
            {
                debug_printf("Line[%d] : header and foot are not consistent! pointer = %p\n", lineno, ptr);
            }
        }
        is_allocated = GET_ALLOC(HDRP(ptr));
        ptr = SIZE_NEXT_BLKP(ptr);
    }
    //debug_printf("mem_low = %p, mem_high = %p, epilogue = %p\n", mem_heap_lo(), mem_heap_hi(), ptr);
    // check the epilogue
    if(check_align(ptr) == 0) 
    {
        debug_printf("Line[%d] : epilogue alignment error! pointer = %p\n", lineno, ptr);
    }
    if(GET_SIZE(HDRP(ptr)) != 0)
    {
        debug_printf("Line[%d] : epilogue size error! pointer = %p\n", lineno, ptr);
    }
    if(HDRP(ptr) > (char*)mem_heap_hi())
    {
        debug_printf("Line[%d] : epilogue's position error! pointer = %p high = %p\n", lineno, ptr, mem_heap_hi());
    }
}

static inline void mm_check_free_list(int lineno)
{
    unsigned lower_bound = 0;/// >
    unsigned upper_bound = 0;/// <=
    size_t free_count = 0;
    size_t free_count_list = 0;
    if(verbose) debug_printf("LINENO : %d\n", lineno);
    for(int i = 0; i < S_BLOCK; ++i)
    {
        void *ptr = (void*)(block_start + i);
        ptr = mem_heap_lo() + (*(unsigned *)ptr);
        while(ptr != mem_heap_lo())
        {
            if(verbose) printf("list %d : position %p remain 0x%x bytes.\n", i, ptr, GET_SIZE(HDRP(ptr)));
            ptr = NEXT_BLKP(ptr);
        }
    }
    for(int i = 0; i < S_BLOCK; ++i)
    {
        lower_bound = upper_bound;
        if(i == S_BLOCK - 1) upper_bound = (1ull << 32) -1;
        else upper_bound = find_size(i);
        void *ptr = (void*)(block_start + i);/// word size = 4
        if(*(unsigned *)ptr == 0) continue;
        void *pptr = ptr;
        ptr = mem_heap_lo() + (*(unsigned *)ptr);
        /*if(PREV_BLKP(ptr) != pptr) 
        {
            debug_printf("Line[%d] : list %d from %d to %d, the first element error! %p\n", lineno,\
                i, lower_bound, upper_bound, ptr);
        }
        if(GET_SIZE(HDRP(ptr)) > upper_bound || GET_SIZE(HDRP(ptr)) <= lower_bound)
        {
             debug_printf("Line[%d] : list %d from %d to %d, boundary error! %p\n", lineno,\
                i, lower_bound, upper_bound, ptr);
        }*/
        while(ptr != mem_heap_lo())
        {
            free_count_list++;
            
            //debug_printf("%p %p\n", ptr, pptr);
            if(PREV_BLKP(ptr) != pptr)
            {
                debug_printf("Line[%d] : list %d from %d to %d, the middle element error! %p, size = %d\n", lineno,\
                i, lower_bound, upper_bound, ptr, GET_SIZE(HDRP(ptr)));
            }
            if(GET_SIZE(HDRP(ptr)) > upper_bound || GET_SIZE(HDRP(ptr)) <= lower_bound)
            {
                debug_printf("Line[%d] : list %d from %d to %d, boundary error! %p\n", lineno,\
                    i, lower_bound, upper_bound, ptr);
            }
            pptr = ptr;
            ptr = NEXT_BLKP(ptr);
        }
    }
    void *ptr = (char*)mem_start + DSIZE;
    while(ptr < mem_heap_hi())
    {
        if(GET_ALLOC(HDRP(ptr)) == 0) free_count++;
        ptr = SIZE_NEXT_BLKP(ptr);
    }
    if(free_count != free_count_list)
    {
        debug_printf("Line[%d] : list number differs from actual numbers\n",lineno);
    }
}

inline void check(int lineno)
{
    return ;
    mm_checkheap(lineno);
    mm_check_free_list(lineno);
}

static inline void check_list(int lineno)
{
    return ;
    mm_check_free_list(lineno);
}
/*
my code here
this is a function to place a pointer according to the address
place bp from the chain of ptr
*/
inline void place_ptr(void *bp)
{
    //printf("bp=%p\n",bp);
    size_t size = GET_SIZE(HDRP(bp));
    if(verbose) debug_printf("place_ptr %p size = 0x%lx number = %ld\n", bp, size, get_number(size));
    void *ptr = (void*)(block_start + get_number(size));
    //fprintf(stderr, "ptr=%p\n", ptr);
    if(GET(ptr) == 0)/// first the place
    {
        PUT_PTR(ptr, bp);
        PUT_PTR(PREV(bp), ptr);///previos
        PUT_PTR(NEXT(bp), mem_heap_lo());///next
        //check(423);
        return ;
    }
    void *pptr = ptr;
    ptr = mem_heap_lo() + GET(ptr);
    /*while(ptr != mem_heap_lo() && ptr < bp) 
    {
        pptr = ptr;
        ptr = NEXT_BLKP(ptr);
    }*/
    if(verbose)
    {
        //puts("///////////////////////");
        printf("prev = %p, now = %p, next = %p\n", pptr, bp, ptr);
    }
    if(pptr != (void*)(block_start + get_number(size)))PUT_PTR(NEXT(pptr), bp);/// pptr's next
    else PUT_PTR(pptr, bp);
    PUT_PTR(PREV(bp), pptr);/// bp's previos
    PUT_PTR(NEXT(bp), ptr);/// bp's next
    if(ptr != mem_heap_lo()) 
        PUT_PTR(PREV(ptr), bp);///ptr's previos
    check_list(478);
    return ;
}
/*
 * this function is to remove a ptr of a chain
 */
static inline void remove_ptr(char *bp)
{
    size_t size = GET_SIZE(HDRP(bp));
    if(verbose) debug_printf("remove %p size = 0x%lx\n", bp, size);
    
    char *ptr = (void*)(block_start + get_number(size));
    //fprintf(stderr, "%d\n", GET(ptr));
    ptr = GET(ptr) + mem_heap_lo();
    while(ptr != bp) 
        ptr = NEXT_BLKP(ptr);
    //assert(ptr == bp);
    if(PREV_BLKP(ptr) == (void*)(block_start + get_number(size))) /// head
    {
        PUT_PTR(PREV_BLKP(ptr), NEXT_BLKP(ptr));
    }
    else PUT_PTR(NEXT(PREV_BLKP(ptr)), NEXT_BLKP(ptr));
    if(NEXT_BLKP(ptr) != mem_heap_lo()) 
        PUT_PTR(PREV(NEXT_BLKP(ptr)), PREV_BLKP(ptr));
    else 
        PUT_PTR(PREV(NEXT_BLKP(ptr)), mem_heap_lo());
    //check(456);
    //check_list(503);
    return ;
}
/* 
 * The remaining routines are internal helper routines 
 */

/* 
 * extend_heap - Extend heap with free block and return its block pointer
 * do not need to merge because of immediate usage of it
 */

static void *extend_heap(size_t words) 
{
    if(verbose) debug_printf("extend! %lx\n", words);
    char *bp;
    size_t size;

    /* Allocate an even number of words to maintain alignment */
    size = (words % 2) ? (words+1) * WSIZE : words * WSIZE; 
    if ((long)(bp = mem_sbrk(size)) == -1)  
        return NULL;                                        

    /* Initialize free block header/footer and the epilogue header */
    PUT(HDRP(bp), PACK(size, 0));         /* Free block header */   
    PUT(FTRP(bp), PACK(size, 0));         /* Free block footer */   
    PUT(HDRP(SIZE_NEXT_BLKP(bp)), PACK(0, 1)); /* New epilogue header */ 
    /// my code here
    
    place_ptr(bp);/// form a chain
    /* Coalesce if the previous block was free */
    void *ret = coalesce(bp);    
    check(485);
    return ret;                                      
}

/*
 * coalesce - Boundary tag coalescing. Return ptr to coalesced block
 * my code here
 * remember to merge the prev and next block during this function!!!
 */
static void *coalesce(void *bp) 
{
    size_t prev_alloc = GET_ALLOC(FTRP(SIZE_PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(SIZE_NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));
    char *prev_block = SIZE_PREV_BLKP(bp);
    char *next_block = SIZE_NEXT_BLKP(bp);
    /// my code here
    if (prev_alloc && next_alloc) {            /* Case 1 */
        return bp;
    }

    else if (prev_alloc && !next_alloc) {      /* Case 2 */
        if(verbose) debug_printf("coalesce 3: bp = %p %x, next = %p %x\n", bp, GET_SIZE(HDRP(bp)),\
            next_block, GET_SIZE(HDRP(next_block)));
        remove_ptr(next_block);
        remove_ptr(bp);
        size += GET_SIZE(HDRP(next_block));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
        place_ptr(bp);
    }

    else if (!prev_alloc && next_alloc) {      /* Case 3 */
        if(verbose) debug_printf("coalesce 3: prev = %p %x, bp = %p %x\n", prev_block, \
            GET_SIZE(HDRP(prev_block)), bp, GET_SIZE(HDRP(bp)));
        remove_ptr(prev_block);
        remove_ptr(bp);
        size += GET_SIZE(HDRP(prev_block));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(prev_block), PACK(size, 0));
        place_ptr(prev_block);
        bp = prev_block;
    }

    else {                                     /* Case 4 */
        if(verbose) debug_printf("coalesce 4: prev = %p %x, bp = %p %x, next = %p %x\n", prev_block,\
          GET_SIZE(HDRP(prev_block)), bp, GET_SIZE(HDRP(bp)), next_block, GET_SIZE(HDRP(next_block)));
        remove_ptr(prev_block);
        remove_ptr(bp);
        remove_ptr(next_block);
        size += GET_SIZE(HDRP(prev_block)) + 
            GET_SIZE(FTRP(next_block));
        PUT(HDRP(prev_block), PACK(size, 0));
        PUT(FTRP(next_block), PACK(size, 0));
        place_ptr(prev_block);
        bp = prev_block;
    }
#ifdef NEXT_FIT
    /* Make sure the rover isn't pointing into the free block */
    /* that we just coalesced */
    if ((rover > (char *)bp) && (rover < NEXT_BLKP(bp))) 
        rover = bp;
#endif
    check(543);
    return bp;
}

/* 
 * place - Place block of asize bytes at start of free block bp 
 *         and split if remainder would be at least minimum block size
 */
static void place(void *bp, size_t asize)
{
    /// my code here
    size_t csize = GET_SIZE(HDRP(bp));   
    remove_ptr(bp);
    if ((csize - asize) >= (2*DSIZE)) { 
        PUT(HDRP(bp), PACK(asize, 1));
        PUT(FTRP(bp), PACK(asize, 1));
        bp = SIZE_NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(csize-asize, 0));
        PUT(FTRP(bp), PACK(csize-asize, 0));
        place_ptr(bp);
    }
    else { 
        PUT(HDRP(bp), PACK(csize, 1));
        PUT(FTRP(bp), PACK(csize, 1));
    }
    check(567);
}

/* 
 * find_fit - Find a fit for a block with asize bytes 
 */
static void *find_fit(size_t asize)
{
#ifdef NEXT_FIT 
    /* Next fit search */
    char *oldrover = rover;

    /* Search from the rover to the end of list */
    for ( ; GET_SIZE(HDRP(rover)) > 0; rover = NEXT_BLKP(rover))
        if (!GET_ALLOC(HDRP(rover)) && (asize <= GET_SIZE(HDRP(rover))))
            return rover;

    /* search from start of list to old rover */
    for (rover = heap_listp; rover < oldrover; rover = NEXT_BLKP(rover))
        if (!GET_ALLOC(HDRP(rover)) && (asize <= GET_SIZE(HDRP(rover))))
            return rover;

    return NULL;  /* no fit found */
#else 
    /* First-fit search */
    void *bp;
    /// my code here
    size_t start_number = get_number(asize);
    for(int i = start_number; i < S_BLOCK; ++i)
    {
        bp = (void*)(block_start + i);
        bp = mem_heap_lo() + (*(unsigned *)bp);
        while(bp != mem_heap_lo())
        {
            //printf("list::::%d 0x%x\n", i, GET_SIZE(bp));
            if(GET_SIZE(HDRP(bp)) >= asize) return bp;
            bp = NEXT_BLKP(bp);
        }
    }
    return NULL; /* No fit */
#endif
}

