#line 1 "..\\..\\..\\..\\Library\\NuMakerLib\\Source\\MPU6050.c"


































 
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
 
 
 





 






 







 




  
 








#line 47 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


  



    typedef unsigned int size_t;    









 
 

 



    typedef struct __va_list __va_list;






   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

#line 136 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 166 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));


#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int __ARM_vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int __ARM_vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int __ARM_vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));
   








 

extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 




    extern __declspec(__nothrow) int (getchar)(void);

   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 




    extern __declspec(__nothrow) int (putchar)(int  );

   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 











#line 1021 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"



 

#line 37 "..\\..\\..\\..\\Library\\NuMakerLib\\Source\\MPU6050.c"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
 
 
 




 
 



 






   














  


 








#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


  



    typedef unsigned int size_t;    
#line 70 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"






    



    typedef unsigned short wchar_t;  
#line 91 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

typedef struct div_t { int quot, rem; } div_t;
    
typedef struct ldiv_t { long int quot, rem; } ldiv_t;
    

typedef struct lldiv_t { long long quot, rem; } lldiv_t;
    


#line 112 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   



 

   




 
#line 131 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   


 
extern __declspec(__nothrow) int __aeabi_MB_CUR_MAX(void);

   




 

   




 




extern __declspec(__nothrow) double atof(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int atoi(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) long int atol(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) long long atoll(const char *  ) __attribute__((__nonnull__(1)));
   



 


extern __declspec(__nothrow) double strtod(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

















 

extern __declspec(__nothrow) float strtof(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) long double strtold(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

 

extern __declspec(__nothrow) long int strtol(const char * __restrict  ,
                        char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



























 
extern __declspec(__nothrow) unsigned long int strtoul(const char * __restrict  ,
                                       char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   


























 

 
extern __declspec(__nothrow) long long strtoll(const char * __restrict  ,
                                  char ** __restrict  , int  )
                          __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) unsigned long long strtoull(const char * __restrict  ,
                                            char ** __restrict  , int  )
                                   __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) int rand(void);
   







 
extern __declspec(__nothrow) void srand(unsigned int  );
   






 

struct _rand_state { int __x[57]; };
extern __declspec(__nothrow) int _rand_r(struct _rand_state *);
extern __declspec(__nothrow) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __declspec(__nothrow) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __declspec(__nothrow) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);
   


 

extern __declspec(__nothrow) void *calloc(size_t  , size_t  );
   



 
extern __declspec(__nothrow) void free(void *  );
   





 
extern __declspec(__nothrow) void *malloc(size_t  );
   



 
extern __declspec(__nothrow) void *realloc(void *  , size_t  );
   













 

extern __declspec(__nothrow) int posix_memalign(void **  , size_t  , size_t  );
   









 

typedef int (*__heapprt)(void *, char const *, ...);
extern __declspec(__nothrow) void __heapstats(int (*  )(void *  ,
                                           char const *  , ...),
                        void *  ) __attribute__((__nonnull__(1)));
   










 
extern __declspec(__nothrow) int __heapvalid(int (*  )(void *  ,
                                           char const *  , ...),
                       void *  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) __declspec(__noreturn) void abort(void);
   







 

extern __declspec(__nothrow) int atexit(void (*  )(void)) __attribute__((__nonnull__(1)));
   




 
#line 436 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern __declspec(__nothrow) __declspec(__noreturn) void exit(int  );
   












 

extern __declspec(__nothrow) __declspec(__noreturn) void _Exit(int  );
   







      

extern __declspec(__nothrow) char *getenv(const char *  ) __attribute__((__nonnull__(1)));
   









 

extern __declspec(__nothrow) int  system(const char *  );
   









 

extern  void *bsearch(const void *  , const void *  ,
              size_t  , size_t  ,
              int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
   












 
#line 524 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern  void qsort(void *  , size_t  , size_t  ,
           int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
   









 

#line 553 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

extern __declspec(__nothrow) __attribute__((const)) int abs(int  );
   



 

extern __declspec(__nothrow) __attribute__((const)) div_t div(int  , int  );
   









 
extern __declspec(__nothrow) __attribute__((const)) long int labs(long int  );
   



 




extern __declspec(__nothrow) __attribute__((const)) ldiv_t ldiv(long int  , long int  );
   











 







extern __declspec(__nothrow) __attribute__((const)) long long llabs(long long  );
   



 




extern __declspec(__nothrow) __attribute__((const)) lldiv_t lldiv(long long  , long long  );
   











 
#line 634 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"




 
typedef struct __sdiv32by16 { int quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned int quot, rem; } __udiv32by16;
    
typedef struct __sdiv64by32 { int rem, quot; } __sdiv64by32;

__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv32by16 __rt_sdiv32by16(
     int  ,
     short int  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __udiv32by16 __rt_udiv32by16(
     unsigned int  ,
     unsigned short  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv64by32 __rt_sdiv64by32(
     int  , unsigned int  ,
     int  );
   

 




 
extern __declspec(__nothrow) unsigned int __fp_status(unsigned int  , unsigned int  );
   







 























 
extern __declspec(__nothrow) int mblen(const char *  , size_t  );
   












 
extern __declspec(__nothrow) int mbtowc(wchar_t * __restrict  ,
                   const char * __restrict  , size_t  );
   















 
extern __declspec(__nothrow) int wctomb(char *  , wchar_t  );
   













 





 
extern __declspec(__nothrow) size_t mbstowcs(wchar_t * __restrict  ,
                      const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 
extern __declspec(__nothrow) size_t wcstombs(char * __restrict  ,
                      const wchar_t * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 

extern __declspec(__nothrow) void __use_realtime_heap(void);
extern __declspec(__nothrow) void __use_realtime_division(void);
extern __declspec(__nothrow) void __use_two_region_memory(void);
extern __declspec(__nothrow) void __use_no_heap(void);
extern __declspec(__nothrow) void __use_no_heap_region(void);

extern __declspec(__nothrow) char const *__C_library_version_string(void);
extern __declspec(__nothrow) int __C_library_version_number(void);











#line 892 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"





 
#line 38 "..\\..\\..\\..\\Library\\NuMakerLib\\Source\\MPU6050.c"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 39 "..\\..\\..\\..\\Library\\NuMakerLib\\Source\\MPU6050.c"
#line 1 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"


































 

#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
 









 




















 








 




 



 

typedef enum IRQn
{
     
    NonMaskableInt_IRQn         = -14,     
    HardFault_IRQn              = -13,     
    SVCall_IRQn                 = -5,      
    PendSV_IRQn                 = -2,      
    SysTick_IRQn                = -1,      

     
    BOD_IRQn                  = 0,         
    WDT_IRQn                  = 1,         
    EINT0_IRQn                = 2,         
    EINT1_IRQn                = 3,         
    GPAB_IRQn                 = 4,         
    GPCDEF_IRQn               = 5,         
    PWMA_IRQn                 = 6,         
    PWMB_IRQn                 = 7,         
    TMR0_IRQn                 = 8,         
    TMR1_IRQn                 = 9,         
    TMR2_IRQn                 = 10,        
    TMR3_IRQn                 = 11,        
    UART02_IRQn               = 12,        
    UART1_IRQn                = 13,        
    SPI0_IRQn                 = 14,        
    SPI1_IRQn                 = 15,        
    SPI2_IRQn                 = 16,        
    SPI3_IRQn                 = 17,        
    I2C0_IRQn                 = 18,        
    I2C1_IRQn                 = 19,        
    CAN0_IRQn                 = 20,        
    CAN1_IRQn                 = 21,        
    SC012_IRQn                = 22,        
    USBD_IRQn                 = 23,        
    PS2_IRQn                  = 24,        
    ACMP_IRQn                 = 25,        
    PDMA_IRQn                 = 26,        
    I2S_IRQn                  = 27,        
    PWRWU_IRQn                = 28,        
    ADC_IRQn                  = 29,        
    IRC_IRQn                  = 30,        
    RTC_IRQn                  = 31         
} IRQn_Type;






 

 





   


#line 1 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"
 




















 













 












 




 


 

 













#line 89 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"


 







#line 114 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"

#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 116 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"
#line 1 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmInstr.h"
 




















 






 


 



 


 









 







 







 






 








 







 







 









 









 
__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 
__attribute__((section(".revsh_text"))) static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}









 



#line 268 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmInstr.h"



#line 619 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmInstr.h"

   

   

#line 117 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"
#line 1 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmFunc.h"
 




















 






 

 



 


 





 
 






 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}







 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}







 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}







 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}







 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}







 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}







 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}







 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}







 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}







 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}







 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}


#line 260 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmFunc.h"


#line 296 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmFunc.h"


#line 615 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmFunc.h"

 

   

#line 118 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"








 
#line 143 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"

 






 
#line 159 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"

 










 


 





 


 
typedef union
{
  struct
  {

    uint32_t _reserved0:27;               





    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       

    uint32_t _reserved0:15;               





    uint32_t T:1;                         
    uint32_t IT:2;                        
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t FPCA:1;                      
    uint32_t _reserved0:29;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 






 


 
typedef struct
{
  volatile uint32_t ISER[1];                  
       uint32_t RESERVED0[31];
  volatile uint32_t ICER[1];                  
       uint32_t RSERVED1[31];
  volatile uint32_t ISPR[1];                  
       uint32_t RESERVED2[31];
  volatile uint32_t ICPR[1];                  
       uint32_t RESERVED3[31];
       uint32_t RESERVED4[64];
  volatile uint32_t IP[8];                    
}  NVIC_Type;

 






 


 
typedef struct
{
  volatile const  uint32_t CPUID;                    
  volatile uint32_t ICSR;                     
       uint32_t RESERVED0;
  volatile uint32_t AIRCR;                    
  volatile uint32_t SCR;                      
  volatile uint32_t CCR;                      
       uint32_t RESERVED1;
  volatile uint32_t SHP[2];                   
  volatile uint32_t SHCSR;                    
} SCB_Type;

 















 



























 















 









 






 



 






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t LOAD;                     
  volatile uint32_t VAL;                      
  volatile const  uint32_t CALIB;                    
} SysTick_Type;

 












 



 



 









 








 
 






 

 










 









 

 



 




 

 
 










 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}







 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}











 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));
}







 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}







 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[0] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}










 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] = (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] & ~(0xFF << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ))) |
        (((priority << (8 - 2)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 )); }
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( ((uint32_t)(IRQn) >> 2) )] = (((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( ((uint32_t)(IRQn) >> 2) )] & ~(0xFF << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ))) |
        (((priority << (8 - 2)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 )); }
}












 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) >> (8 - 2)));  }  
  else {
    return((uint32_t)((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[ ( ((uint32_t)(IRQn) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) >> (8 - 2)));  }  
}





 
static __inline void NVIC_SystemReset(void)
{
  __dsb(0xF);                                                     
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FA << 16)      |
                 (1UL << 2));
  __dsb(0xF);                                                      
  while(1);                                                     
}

 



 




 

















 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if (ticks > (0xFFFFFFUL << 0))  return (1);             

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = (ticks & (0xFFFFFFUL << 0)) - 1;       
  NVIC_SetPriority (SysTick_IRQn, (1<<2) - 1);   
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0;                                           
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2) |
                   (1UL << 1)   |
                   (1UL << 0);                     
  return (0);                                                   
}



 








   

#line 113 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\system_NUC100Series.h"
 









 






 
 
 

 




 






extern uint32_t SystemCoreClock;     
extern uint32_t CyclesPerUs;         
extern uint32_t PllClock;            









 
extern void SystemInit(void);










 
extern void SystemCoreClockUpdate(void);





#line 114 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"


#pragma anon_unions



 



 

 



 



typedef struct
{











































 

    volatile uint32_t CMPCR[2];       
    volatile uint32_t CMPSR;          

} ACMP_T;






 


 












 












   
   




 



 


typedef struct
{


















































































































































































































 

    volatile const  uint32_t ADDR[8];        
    volatile uint32_t ADCR;           
    volatile uint32_t ADCHER;         
    volatile uint32_t ADCMPR[2];      
    volatile uint32_t ADSR;           
    volatile const  uint32_t RESERVE0[3];  
    volatile const  uint32_t ADPDMA;         

} ADC_T;






 

 









 






























 






 


















 





















 



   
   



 



 


typedef struct
{








































































































































































































































































































































































































































































































 

    volatile uint32_t PWRCON;         
    volatile uint32_t AHBCLK;         
    volatile uint32_t APBCLK;         
    volatile uint32_t CLKSTATUS;      
    volatile uint32_t CLKSEL0;        
    volatile uint32_t CLKSEL1;        
    volatile uint32_t CLKDIV;         
    volatile uint32_t CLKSEL2;        
    volatile uint32_t PLLCON;         
    volatile uint32_t FRQDIV;         
    volatile uint32_t RESERVE[2];   
    volatile uint32_t APBCLK1;        
    volatile uint32_t CLKSEL3;        
    volatile uint32_t CLKDIV1;        

} CLK_T;






 

 































 










 











































































 









 






















 






 







































 



































 









 












 









 





















 






   
   



 



 


typedef struct
{













































































































































































 

    volatile uint32_t CTL;            
    volatile uint32_t DMASAR;         
    volatile const  uint32_t RESERVED0;    
    volatile uint32_t DMABCR ;        
    volatile const  uint32_t RESERVED1;    
    volatile const  uint32_t DMACSAR;        
    volatile const  uint32_t RESERVED2;    
    volatile const  uint32_t DMACBCR;        
    volatile uint32_t DMAIER ;        
    volatile uint32_t DMAISR;         
    volatile const  uint32_t RESERVED3[22];
    volatile uint32_t WDATA;          
    volatile uint32_t SEED;           
    volatile const  uint32_t CHECKSUM;       

} CRC_T;







 

 



























 



 



 



 



 






 






 



 



 


   
   



 



 



typedef struct
{




















































 

    volatile uint32_t EBICON;         
    volatile uint32_t EXTIME;         
    volatile uint32_t EBICON2;        

} EBI_T;






 

 












 












 








   
   



 



 


typedef struct
{

























































































































































 

    volatile uint32_t ISPCON;         
    volatile uint32_t ISPADR;         
    volatile uint32_t ISPDAT;         
    volatile uint32_t ISPCMD;         
    volatile uint32_t ISPTRG;         
    volatile const  uint32_t DFBADR;         
    volatile uint32_t FATCON;         
    volatile const  uint32_t RESERVED[9];  
    volatile uint32_t ISPSTA;         

} FMC_T;






 

 
























 



 



 









 



 



 
























   
   




 



 


typedef struct
{

































































































































 

    volatile uint32_t PMD;            
    volatile uint32_t OFFD;           
    volatile uint32_t DOUT;           
    volatile uint32_t DMASK;          
    volatile const  uint32_t PIN;            
    volatile uint32_t DBEN;           
    volatile uint32_t IMD;            
    volatile uint32_t IEN;            
    volatile uint32_t ISRC;           

} GPIO_T;





typedef struct
{
































 

    volatile uint32_t DBNCECON;       

} GPIO_DBNCECON_T;






 


 
















































 



 



 



 



 



 



 






 



 








   
   




 



 


typedef struct
{
























































































































































































































 

    volatile uint32_t I2CON;          
    volatile uint32_t I2CADDR0;       
    volatile uint32_t I2CDAT;         
    volatile const  uint32_t I2CSTATUS;      
    volatile uint32_t I2CLK;          
    volatile uint32_t I2CTOC;         
    volatile uint32_t I2CADDR1;       
    volatile uint32_t I2CADDR2;       
    volatile uint32_t I2CADDR3;       
    volatile uint32_t I2CADM0;        
    volatile uint32_t I2CADM1;        
    volatile uint32_t I2CADM2;        
    volatile uint32_t I2CADM3;        
    volatile const  uint32_t RESERVED0[2];
    volatile uint32_t I2CWKUPCON;     
    volatile uint32_t I2CWKUPSTS;     

} I2C_T;







 

 


















 






 



 



 



 









 



 



 



   
   



 



 


typedef struct
{





























































































































































































































































































 

    volatile uint32_t CON;            
    volatile uint32_t CLKDIV;         
    volatile uint32_t IE;             
    volatile uint32_t STATUS;         
    volatile  uint32_t TXFIFO;         
    volatile const  uint32_t RXFIFO;         

} I2S_T;







 

 






















































                                                  






                                                      

























 

























































   
   



 



 


typedef struct
{









































































































































 

    volatile uint32_t CSR;            
    volatile uint32_t SAR;            
    volatile uint32_t DAR;            
    volatile uint32_t BCR;            
    volatile const  uint32_t POINT;          
    volatile const  uint32_t CSAR;           
    volatile const  uint32_t CDAR;           
    volatile const  uint32_t CBCR;           
    volatile uint32_t IER;            
    volatile uint32_t ISR;            
    volatile const  uint32_t RESERVE[22];  
    volatile const  uint32_t SBUF;           

} PDMA_T;





typedef struct
{




































































































































































































 

    volatile uint32_t GCRCSR;         
    volatile uint32_t PDSSR0;         
    volatile uint32_t PDSSR1;         
    volatile uint32_t GCRISR;         
    volatile uint32_t PDSSR2;         

} PDMA_GCR_T;






 


 





















 



 



 




 






 






 






























 
























 















 

































 





   
   



 



 


typedef struct
{









































































































































































 

    volatile uint32_t PS2CON;         
    volatile uint32_t PS2TXDATA0;     
    volatile uint32_t PS2TXDATA1;     
    volatile uint32_t PS2TXDATA2;     
    volatile uint32_t PS2TXDATA3;     
    volatile uint32_t PS2RXDATA;      
    volatile uint32_t PS2STATUS;      
    volatile uint32_t PS2INTID;       

} PS2_T;







 

 



























 



 



























 


                                                                                                    


   
   


 



 


typedef struct
{
























































































































































































































































































































































































































































































































































































































































































































































































































 

    volatile uint32_t PPR;            
    volatile uint32_t CSR;            
    volatile uint32_t PCR;            
    volatile uint32_t CNR0;           
    volatile uint32_t CMR0;           
    volatile const  uint32_t PDR0;           
    volatile uint32_t CNR1;           
    volatile uint32_t CMR1;           
    volatile const  uint32_t PDR1;           
    volatile uint32_t CNR2;           
    volatile uint32_t CMR2;           
    volatile const  uint32_t PDR2;           
    volatile uint32_t CNR3;           
    volatile uint32_t CMR3;           
    volatile const  uint32_t PDR3;           
    volatile uint32_t PBCR;           
    volatile uint32_t PIER;           
    volatile uint32_t PIIR;           
    volatile const  uint32_t RESERVE1[2];  
    volatile uint32_t CCR0;           
    volatile uint32_t CCR2;           
    volatile uint32_t CRLR0;          
    volatile uint32_t CFLR0;          
    volatile uint32_t CRLR1;          
    volatile uint32_t CFLR1;          
    volatile uint32_t CRLR2;          
    volatile uint32_t CFLR2;          
    volatile uint32_t CRLR3;          
    volatile uint32_t CFLR3;          
    volatile uint32_t CAPENR;         
    volatile uint32_t POE;            
    volatile uint32_t TCON;           
    volatile uint32_t TSTATUS;        
    volatile uint32_t SYNCBUSY0;      
    volatile uint32_t SYNCBUSY1;      
    volatile uint32_t SYNCBUSY2;      
    volatile uint32_t SYNCBUSY3;      

} PWM_T;






 

 












 












 




























































 


                                                                                            
                                                          


                                                                                            
                                                          



 



 































 
























 










































 










































 



 



 












 












 













 













 



 



 



 


   
   





 



 


typedef struct
{


































































































































































































































 

    volatile uint32_t INIR;           
    volatile uint32_t AER;            
    volatile uint32_t FCR;            
    volatile uint32_t TLR;            
    volatile uint32_t CLR;            
    volatile uint32_t TSSR;           
    volatile uint32_t DWR;            
    volatile uint32_t TAR;            
    volatile uint32_t CAR;            
    volatile const  uint32_t LIR;            
    volatile uint32_t RIER;           
    volatile uint32_t RIIR;           
    volatile uint32_t TTR;            
    volatile const  uint32_t RESERVED[2];  
    volatile uint32_t SPRCTL;         
    volatile uint32_t SPR[20];        

} RTC_T;






 

 






 






 






 


















 


















 



 



 


















 


















 



 









 









 



 

















   
   




 



 


typedef struct
{


    































































































































































































































































































































































































































































































































































































































































 

    union {
    volatile const  uint32_t RBR;            
    volatile  uint32_t THR;            
    };
    volatile uint32_t CTL;            
    volatile uint32_t ALTCTL;         
    volatile uint32_t EGTR;           
    volatile uint32_t RFTMR;          
    volatile uint32_t ETUCR;          
    volatile uint32_t IER;            
    volatile uint32_t ISR;            
    volatile uint32_t TRSR;           
    volatile uint32_t PINCSR;         
    volatile uint32_t TMR0;           
    volatile uint32_t TMR1;           
    volatile uint32_t TMR2;           
    volatile const  uint32_t RESERVED0;    
    volatile const  uint32_t TDRA;           
    volatile const  uint32_t TDRB;           

} SC_T;






 

 



 



 













































 










































 



 



 






 

































 


































 



















































 







































 






 






 






 



 





   
   




 



 


typedef struct
{





































































































































































































































































































































































































































 

    volatile uint32_t CNTRL;          
    volatile uint32_t DIVIDER;        
    volatile uint32_t SSR;            
    volatile const  uint32_t RESERVE0;     
    volatile const  uint32_t RX[2];          
    volatile const  uint32_t RESERVE1;     
    volatile const  uint32_t RESERVE2;     
    volatile  uint32_t TX[2];          
    volatile const  uint32_t RESERVE3;     
    volatile const  uint32_t RESERVE4;     
    volatile const  uint32_t RESERVE5;     
    volatile uint32_t VARCLK;         
    volatile uint32_t DMA;            
    volatile uint32_t CNTRL2;         
    volatile uint32_t FIFO_CTL;       
    volatile uint32_t STATUS;         
    
} SPI_T;






 

 






















































 






 















 









 
























 
























 



































   
   




 



 



typedef struct
{














































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 

    volatile const  uint32_t PDID;           
    volatile uint32_t RSTSRC;         
    volatile uint32_t IPRSTC1;        
    volatile uint32_t IPRSTC2;        
    volatile uint32_t IPRSTC3;        
    volatile const  uint32_t RESERVE0;
    volatile uint32_t BODCR;          
    volatile uint32_t TEMPCR;         
    volatile const  uint32_t RESERVE1;
    volatile uint32_t PORCR;          
    volatile const  uint32_t RESERVE2[2];
    volatile uint32_t GPA_MFP;        
    volatile uint32_t GPB_MFP;        
    volatile uint32_t GPC_MFP;        
    volatile uint32_t GPD_MFP;        
    volatile uint32_t GPE_MFP;        
    volatile uint32_t GPF_MFP;        
    volatile const  uint32_t RESERVE3[2];
    volatile uint32_t ALT_MFP;        
    volatile const  uint32_t RESERVE4;
    volatile uint32_t ALT_MFP1;       
    volatile uint32_t ALT_MFP2;       
    volatile const  uint32_t RESERVE5[8];
    volatile uint32_t IRCTRIMCTL;     
    volatile uint32_t IRCTRIMIEN;     
    volatile uint32_t IRCTRIMINT;     
    volatile const  uint32_t RESERVE6[29];   
    volatile uint32_t REGWRPROT;      

} GCR_T;







 

 





















 












 































































 









 





















 



 



 







 






 






 






 












 















 




























































 













































 












 






 









 








typedef struct
{

    











































































 

    volatile const  uint32_t IRQSRC[32];    
    volatile uint32_t NMISEL;        
    volatile uint32_t MCUIRQ;        
    
} GCR_INT_T;



 



 






 


   
   




 



 


typedef struct
{

























































































































































 

    volatile uint32_t TCSR;           
    volatile uint32_t TCMPR;          
    volatile uint32_t TISR;           
    volatile const  uint32_t TDR;            
    volatile const  uint32_t TCAP;           
    volatile uint32_t TEXCON;         
    volatile uint32_t TEXISR;         

} TIMER_T;






 

 






























 



 






 



 



 





















 


   
   



 



 


typedef struct
{















































































































































































































































































































































































































































































































































































































 

    union
    {
        volatile uint32_t DATA;           
        volatile uint32_t THR;            
        volatile uint32_t RBR;            
    };
    volatile uint32_t IER;            
    volatile uint32_t FCR;            
    volatile uint32_t LCR;            
    volatile uint32_t MCR;            
    volatile uint32_t MSR;            
    volatile uint32_t FSR;            
    volatile uint32_t ISR;            
    volatile uint32_t TOR;            
    volatile uint32_t BAUD;           
    volatile uint32_t IRCR;           
    volatile uint32_t ALT_CSR;        
    volatile uint32_t FUN_SEL;        
    volatile uint32_t LIN_CTL;        
    volatile uint32_t LIN_SR;         
    

} UART_T;







 

 



 



 








 






























 















 


















 









 










 







































 



































































 






 


                                                                                     


                                                                                     


                                                                                     



 









 
























 



 










































 

















   
   



 



 



typedef struct
{










































































 

    volatile uint32_t BUFSEG;         
    volatile uint32_t MXPLD;          
    volatile uint32_t CFG;            
    volatile uint32_t CFGP;           

} USBD_EP_T;







typedef struct
{

















































































































































































































 

    volatile uint32_t INTEN;          
    volatile uint32_t INTSTS;         
    volatile uint32_t FADDR;          
    volatile const  uint32_t EPSTS;          
    volatile uint32_t ATTR;           
    volatile const  uint32_t FLDET;          
    volatile uint32_t STBUFSEG;       
    volatile const  uint32_t RESERVE0;   
    USBD_EP_T     EP[6];          
    volatile const  uint32_t RESERVE1[4];  
    volatile uint32_t DRVSE0;         

} USBD_T;







 

 


















                                           


















                                            



                                            





















                                             






























                                            



 



 



                                            



                                              















                                             






                                           



   
   




 



 


typedef struct
{




















































































 

    volatile uint32_t WTCR;           
    volatile uint32_t WTCRALT;        

} WDT_T;






 

 






























                                                  


   
   


 



 


typedef struct
{













































































 

    volatile uint32_t WWDTRLD;        
    volatile uint32_t WWDTCR;         
    volatile uint32_t WWDTSR;         
    volatile const  uint32_t WWDTCVR;        

} WWDT_T;






 

 



                                                   















                                                   






                                                  


   
   
   


 
 
 



 
 






 
#line 10743 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"










































#line 10794 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"















   

 
 
 




 
#line 10826 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"










































#line 10877 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
















   











 

typedef volatile unsigned char  vu8;        
typedef volatile unsigned short vu16;       
typedef volatile unsigned long  vu32;       





 







 







 








 







 








 







 







 






 








 







 








 







 







 






 


   







 













 
#line 11087 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"

 










   

   


 
 
 
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SYS.h"
 









 










 



 



 


 
 
 
#line 62 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SYS.h"


 
 
 
#line 73 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SYS.h"


 
 
 







 



































    


































































































































































































































































































































































































































































































































































































































































































































































































































































































































































    






























































































































































































































































   



 







 







 







 







 








 









 







 







 







 











 








 








 








 








 








 








 








 







 







 







 







 














 









 
static __inline void SYS_LockReg(void)
{
    ((GCR_T *) ((( uint32_t)0x50000000) + 0x00000))->REGWRPROT = 0;
}








 
static __inline void SYS_UnlockReg(void)
{
    while(((GCR_T *) ((( uint32_t)0x50000000) + 0x00000))->REGWRPROT != (1ul << 0))
    {
 			((GCR_T *) ((( uint32_t)0x50000000) + 0x00000))->REGWRPROT = 0x59;
        ((GCR_T *) ((( uint32_t)0x50000000) + 0x00000))->REGWRPROT = 0x16;
        ((GCR_T *) ((( uint32_t)0x50000000) + 0x00000))->REGWRPROT = 0x88;
    }
}


void SYS_ClearResetSrc(uint32_t u32Src);
uint32_t SYS_GetBODStatus(void);
uint32_t SYS_GetResetSrc(void);
uint32_t SYS_IsRegLocked(void);
uint32_t  SYS_ReadPDID(void);
void SYS_ResetChip(void);
void SYS_ResetCPU(void);
void SYS_ResetModule(uint32_t u32ModuleIndex);
void SYS_EnableBOD(int32_t i32Mode, uint32_t u32BODLevel);
void SYS_DisableBOD(void);


   

   

   








 
#line 11108 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ADC.h"
 









 












 



 



 
 
 
 
























 
 
 




 
 
 
#line 76 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ADC.h"

 
 
 




 
 
 




 
 
 





 
 
 



 
 
 





   



 











 








 







 








 












 












 








 









 









 








 







 
















 
#line 254 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ADC.h"






 
















 
#line 287 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ADC.h"






 










 










 







 








 


void ADC_Open(ADC_T *adc,
              uint32_t u32InputMode,
              uint32_t u32OpMode,
              uint32_t u32ChMask);
void ADC_Close(ADC_T *adc);
void ADC_EnableHWTrigger(ADC_T *adc,
                         uint32_t u32Source,
                         uint32_t u32Param);
void ADC_DisableHWTrigger(ADC_T *adc);
void ADC_EnableInt(ADC_T *adc, uint32_t u32Mask);
void ADC_DisableInt(ADC_T *adc, uint32_t u32Mask);



   

   

   







 
#line 11109 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\FMC.h"
 









 












 



 



 


 
 
 







 
 
 



 
 
 
#line 61 "..\\..\\..\\..\\Library\\StdDriver\\inc\\FMC.h"


   



 

 
 
 









 












 













 













 














 











 













 












 













 















 














 



 
 
 











 
static __inline void FMC_Write(uint32_t u32addr, uint32_t u32data)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x21;    
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = u32addr;               
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPDAT = u32data;               
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = 0x1;                   
    __isb(0xF);                             
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG);                  
}










 
static __inline uint32_t FMC_Read(uint32_t u32addr)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x00;  
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = u32addr;          
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = 0x1;              
    __isb(0xF);                        
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG);             

    return ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPDAT;
}













 
static __inline int32_t FMC_Erase(uint32_t u32addr)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x22;  
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = u32addr;                
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = 0x1;                    
    __isb(0xF);                              
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG);                   

     
    if(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCON & (1ul << 6))
    {
        ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCON |= (1ul << 6);
        return -1;
    }
    return 0;
}










 
static __inline uint32_t FMC_ReadUID(uint8_t u8index)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x04;  
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = (u8index << 2);       
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = 0x1;                  
    __isb(0xF);                            
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG);                 

    return ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPDAT;
}











 
static __inline uint32_t FMC_ReadCID(void)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x0B;            
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = 0x0;                            
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = (1ul << 0);           
    __isb(0xF);                                      
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG & (1ul << 0)) ;   

    return ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPDAT;
}










 
static __inline uint32_t FMC_ReadPID(void)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x0C;           
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = 0x04;                          
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = (1ul << 0);          
    __isb(0xF);                                     
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG & (1ul << 0));   

    return ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPDAT;
}










 
static __inline uint32_t FMC_ReadUCID(uint32_t u32Index)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x04;           
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = (0x04 * u32Index) + 0x10;      
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = (1ul << 0);          
    __isb(0xF);                                     
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG & (1ul << 0));   

    return ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPDAT;
}















 
static __inline void FMC_SetVectorPageAddr(uint32_t u32PageAddr)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x2e;  
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = u32PageAddr;        
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = 0x1;                
    __isb(0xF);                          
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG);               
}














 
static __inline uint32_t FMC_GetVECMAP(void)
{
    return (((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPSTA & (0xFFFul << 9));
}

extern void FMC_Open(void);
extern void FMC_Close(void);
extern void FMC_EnableAPUpdate(void);
extern void FMC_DisableAPUpdate(void);
extern void FMC_EnableConfigUpdate(void);
extern void FMC_DisableConfigUpdate(void);
extern void FMC_EnableLDUpdate(void);
extern void FMC_DisableLDUpdate(void);
extern int32_t FMC_ReadConfig(uint32_t *u32Config, uint32_t u32Count);
extern int32_t FMC_WriteConfig(uint32_t *u32Config, uint32_t u32Count);
extern void FMC_SetBootSource(int32_t i32BootSrc);
extern int32_t FMC_GetBootSource(void);
extern uint32_t FMC_ReadDataFlashBaseAddr(void);

   

   

   








#line 11110 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\GPIO.h"
 









 











 



 



 


 
 
 





 
 
 






 
 
 



 
 
 






#line 82 "..\\..\\..\\..\\Library\\StdDriver\\inc\\GPIO.h"















 
#line 183 "..\\..\\..\\..\\Library\\StdDriver\\inc\\GPIO.h"


   




 












 













 













 













 













 













 













 














 



















 










 











 










 















 














 
















 














 



void GPIO_SetMode(GPIO_T *port, uint32_t u32PinMask, uint32_t u32Mode);
void GPIO_EnableInt(GPIO_T *port, uint32_t u32Pin, uint32_t u32IntAttribs);
void GPIO_DisableInt(GPIO_T *port, uint32_t u32Pin);


   

   

   







 
#line 11111 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\I2C.h"
 









 












 



 



 

 
 
 
#line 47 "..\\..\\..\\..\\Library\\StdDriver\\inc\\I2C.h"




   



 









 










 










 










 











 










 











 











 










 


 
 
 









 
static __inline void I2C_STOP(I2C_T *i2c)
{
    (i2c)->I2CON |= ((1ul << 3) | (1ul << 4));
    while((i2c)->I2CON & (1ul << 4));
}

void I2C_ClearTimeoutFlag(I2C_T *i2c);
void I2C_Close(I2C_T *i2c);
void I2C_Trigger(I2C_T *i2c, uint8_t u8Start, uint8_t u8Stop, uint8_t u8Si, uint8_t u8Ack);
void I2C_Ctrl(I2C_T *i2c, uint8_t u8Start, uint8_t u8Stop, uint8_t u8Si, uint8_t u8Ack);
void I2C_DisableInt(I2C_T *i2c);
void I2C_EnableInt(I2C_T *i2c);
uint32_t I2C_GetBusClockFreq(I2C_T *i2c);
uint32_t I2C_SetBusClockFreq(I2C_T *i2c, uint32_t u32BusClock);
uint32_t I2C_GetIntFlag(I2C_T *i2c);
uint32_t I2C_GetStatus(I2C_T *i2c);
uint32_t I2C_Open(I2C_T *i2c, uint32_t u32BusClock);
uint8_t I2C_GetData(I2C_T *i2c);
void I2C_SetSlaveAddr(I2C_T *i2c, uint8_t u8SlaveNo, uint8_t u8SlaveAddr, uint8_t u8GCMode);
void I2C_SetSlaveAddrMask(I2C_T *i2c, uint8_t u8SlaveNo, uint8_t u8SlaveAddrMask);
void I2C_EnableTimeout(I2C_T *i2c, uint8_t u8LongTimeout);
void I2C_DisableTimeout(I2C_T *i2c);
void I2C_EnableWakeup(I2C_T *i2c);
void I2C_DisableWakeup(I2C_T *i2c);
void I2C_SetData(I2C_T *i2c, uint8_t u8Data);

   

   

   

#line 11112 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\PWM.h"
 








 











 



 



 
#line 43 "..\\..\\..\\..\\Library\\StdDriver\\inc\\PWM.h"
 
 
 






   




 











 
#line 79 "..\\..\\..\\..\\Library\\StdDriver\\inc\\PWM.h"









 










 













 

















 













 














 
















 
#line 186 "..\\..\\..\\..\\Library\\StdDriver\\inc\\PWM.h"


uint32_t PWM_ConfigCaptureChannel(PWM_T *pwm,
                                  uint32_t u32ChannelNum,
                                  uint32_t u32UnitTimeNsec,
                                  uint32_t u32CaptureEdge);
uint32_t PWM_ConfigOutputChannel(PWM_T *pwm,
                                 uint32_t u32ChannelNum,
                                 uint32_t u32Frequncy,
                                 uint32_t u32DutyCycle);
void PWM_Start(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_Stop(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_ForceStop(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_EnableADCTrigger(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Condition);
void PWM_DisableADCTrigger(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_ClearADCTriggerFlag(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Condition);
uint32_t PWM_GetADCTriggerFlag(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableCapture(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_DisableCapture(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_EnableOutput(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_DisableOutput(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_EnableDeadZone(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Duration);
void PWM_DisableDeadZone(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableCaptureInt(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Edge);
void PWM_DisableCaptureInt(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Edge);
void PWM_ClearCaptureIntFlag(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Edge);
uint32_t PWM_GetCaptureIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableDutyInt(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32IntDutyType);
void PWM_DisableDutyInt(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_ClearDutyIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
uint32_t PWM_GetDutyIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnablePeriodInt(PWM_T *pwm, uint32_t u32ChannelNum,  uint32_t u32IntPeriodType);
void PWM_DisablePeriodInt(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_ClearPeriodIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
uint32_t PWM_GetPeriodIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);



   

   

   







 
#line 11113 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SPI.h"
 









 











 



 



 














#line 52 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SPI.h"









   




 






 







 







 







 







 







 







 








 







 







 







 







 







 








 








 








 







 







 








 








 










 







 







 







 







 







 







 










 







 







 








 








 









 




 
uint32_t SPI_Open(SPI_T *spi, uint32_t u32MasterSlave, uint32_t u32SPIMode, uint32_t u32DataWidth, uint32_t u32BusClock);
void SPI_Close(SPI_T *spi);
void SPI_ClearRxFIFO(SPI_T *spi);
void SPI_ClearTxFIFO(SPI_T *spi);
void SPI_DisableAutoSS(SPI_T *spi);
void SPI_EnableAutoSS(SPI_T *spi, uint32_t u32SSPinMask, uint32_t u32ActiveLevel);
uint32_t SPI_SetBusClock(SPI_T *spi, uint32_t u32BusClock);
void SPI_EnableFIFO(SPI_T *spi, uint32_t u32TxThreshold, uint32_t u32RxThreshold);
void SPI_DisableFIFO(SPI_T *spi);
uint32_t SPI_GetBusClock(SPI_T *spi);
void SPI_EnableInt(SPI_T *spi, uint32_t u32Mask);
void SPI_DisableInt(SPI_T *spi, uint32_t u32Mask);
uint32_t SPI_GetIntFlag(SPI_T *spi, uint32_t u32Mask);
void SPI_ClearIntFlag(SPI_T *spi, uint32_t u32Mask);
uint32_t SPI_GetStatus(SPI_T *spi, uint32_t u32Mask);





 



 



 




#line 11114 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CRC.h"
 








 











 



 



 
 
 
 





 
 
 





 
 
 




   




 









 










 










 










 













 










 










 



 
void CRC_Open(uint32_t u32Mode, uint32_t u32Attribute, uint32_t u32Seed, uint32_t u32DataLen);
void CRC_StartDMATransfer(uint32_t u32SrcAddr, uint32_t u32ByteCount);
uint32_t CRC_GetChecksum(void);

   

   

   







 
#line 11115 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\TIMER.h"
 








 











 



 



 

#line 43 "..\\..\\..\\..\\Library\\StdDriver\\inc\\TIMER.h"

   




 










 












 











 










 
static __inline void TIMER_Start(TIMER_T *timer)
{
    timer->TCSR |= (1ul << 30);
}









 
static __inline void TIMER_Stop(TIMER_T *timer)
{
    timer->TCSR &= ~(1ul << 30);
}










 
static __inline void TIMER_EnableWakeup(TIMER_T *timer)
{
    timer->TCSR |= (1ul << 23);
}









 
static __inline void TIMER_DisableWakeup(TIMER_T *timer)
{
    timer->TCSR &= ~(1ul << 23);
}









 
static __inline void TIMER_EnableCaptureDebounce(TIMER_T *timer)
{
    timer->TEXCON |= (1ul << 6);
}









 
static __inline void TIMER_DisableCaptureDebounce(TIMER_T *timer)
{
    timer->TEXCON &= ~(1ul << 6);
}









 
static __inline void TIMER_EnableEventCounterDebounce(TIMER_T *timer)
{
    timer->TEXCON |= (1ul << 7);
}









 
static __inline void TIMER_DisableEventCounterDebounce(TIMER_T *timer)
{
    timer->TEXCON &= ~(1ul << 7);
}









 
static __inline void TIMER_EnableInt(TIMER_T *timer)
{
    timer->TCSR |= (1ul << 29);
}









 
static __inline void TIMER_DisableInt(TIMER_T *timer)
{
    timer->TCSR &= ~(1ul << 29);
}









 
static __inline void TIMER_EnableCaptureInt(TIMER_T *timer)
{
    timer->TEXCON |= (1ul << 5);
}









 
static __inline void TIMER_DisableCaptureInt(TIMER_T *timer)
{
    timer->TEXCON &= ~(1ul << 5);
}










 
static __inline uint32_t TIMER_GetIntFlag(TIMER_T *timer)
{
    return (timer->TISR & (1ul << 0) ? 1 : 0);
}









 
static __inline void TIMER_ClearIntFlag(TIMER_T *timer)
{
    timer->TISR = (1ul << 0);
}










 
static __inline uint32_t TIMER_GetCaptureIntFlag(TIMER_T *timer)
{
    return timer->TEXISR;
}









 
static __inline void TIMER_ClearCaptureIntFlag(TIMER_T *timer)
{
    timer->TEXISR = (1ul << 0);
}










 
static __inline uint32_t TIMER_GetWakeupFlag(TIMER_T *timer)
{
    return (timer->TISR & (1ul << 1) ? 1 : 0);
}









 
static __inline void TIMER_ClearWakeupFlag(TIMER_T *timer)
{
    timer->TISR = (1ul << 1);
}









 
static __inline uint32_t TIMER_GetCaptureData(TIMER_T *timer)
{
    return timer->TCAP;
}









 
static __inline uint32_t TIMER_GetCounter(TIMER_T *timer)
{
    return timer->TDR;
}

uint32_t TIMER_Open(TIMER_T *timer, uint32_t u32Mode, uint32_t u32Freq);
void TIMER_Close(TIMER_T *timer);
void TIMER_Delay(TIMER_T *timer, uint32_t u32Usec);
void TIMER_EnableCapture(TIMER_T *timer, uint32_t u32CapMode, uint32_t u32Edge);
void TIMER_DisableCapture(TIMER_T *timer);
void TIMER_EnableEventCounter(TIMER_T *timer, uint32_t u32Edge);
void TIMER_DisableEventCounter(TIMER_T *timer);
uint32_t TIMER_GetModuleClock(TIMER_T *timer);

   

   

   







 
#line 11116 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\WDT.h"
 








 











 



 



 
 
 
 
#line 42 "..\\..\\..\\..\\Library\\StdDriver\\inc\\WDT.h"

 
 
 





   




 









 










 










 











 











 











 












 










 
static __inline void WDT_Close(void)
{
    ((WDT_T *) ((( uint32_t)0x40000000) + 0x4000))->WTCR = 0;
    return;
}









 
static __inline void WDT_EnableInt(void)
{
    ((WDT_T *) ((( uint32_t)0x40000000) + 0x4000))->WTCR |= (1ul << 6);
    return;
}









 
static __inline void WDT_DisableInt(void)
{
    
    ((WDT_T *) ((( uint32_t)0x40000000) + 0x4000))->WTCR &= ~((1ul << 6) | (1ul << 2) | (1ul << 3) | (1ul << 5));
    return;
}

void WDT_Open(uint32_t u32TimeoutInterval, uint32_t u32ResetDelay, uint32_t u32EnableReset, uint32_t u32EnableWakeup);

   

   

   







 
#line 11117 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\WWDT.h"
 








 











 



 



 
 
 
 
#line 50 "..\\..\\..\\..\\Library\\StdDriver\\inc\\WWDT.h"



   




 









 










 











 











 










 












 


void WWDT_Open(uint32_t u32PreScale, uint32_t u32CmpValue, uint32_t u32EnableInt);

   

   

   







 
#line 11118 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\RTC.h"
 








 











 



 



 















#line 54 "..\\..\\..\\..\\Library\\StdDriver\\inc\\RTC.h"

#line 62 "..\\..\\..\\..\\Library\\StdDriver\\inc\\RTC.h"







   




 


 
typedef struct
{
    uint32_t u32Year;            
    uint32_t u32Month;           
    uint32_t u32Day;             
    uint32_t u32DayOfWeek;       
    uint32_t u32Hour;            
    uint32_t u32Minute;          
    uint32_t u32Second;          
    uint32_t u32TimeScale;       
    uint32_t u32AmPm;            
} S_RTC_TIME_DATA_T;

   




 










 










 










 











 











 










 











 












 













 










 
static __inline void RTC_WaitAccessEnable(void)
{
     
    while((((RTC_T *) ((( uint32_t)0x40000000) + 0x08000))->AER & (1ul << 16)) == (1ul << 16));
    ((RTC_T *) ((( uint32_t)0x40000000) + 0x08000))->AER = 0x0000A965UL;

     
    while((((RTC_T *) ((( uint32_t)0x40000000) + 0x08000))->AER & (1ul << 16)) == 0x0);
}

void RTC_Open(S_RTC_TIME_DATA_T *sPt);
void RTC_Close(void);
void RTC_32KCalibration(int32_t i32FrequencyX100);
void RTC_GetDateAndTime(S_RTC_TIME_DATA_T *sPt);
void RTC_GetAlarmDateAndTime(S_RTC_TIME_DATA_T *sPt);
void RTC_SetDateAndTime(S_RTC_TIME_DATA_T *sPt);
void RTC_SetAlarmDateAndTime(S_RTC_TIME_DATA_T *sPt);
void RTC_SetDate(uint32_t u32Year, uint32_t u32Month, uint32_t u32Day, uint32_t u32DayOfWeek);
void RTC_SetTime(uint32_t u32Hour, uint32_t u32Minute, uint32_t u32Second, uint32_t u32TimeMode, uint32_t u32AmPm);
void RTC_SetAlarmDate(uint32_t u32Year, uint32_t u32Month, uint32_t u32Day);
void RTC_SetAlarmTime(uint32_t u32Hour, uint32_t u32Minute, uint32_t u32Second, uint32_t u32TimeMode, uint32_t u32AmPm);
uint32_t RTC_GetDayOfWeek(void);
void RTC_SetTickPeriod(uint32_t u32TickSelection);
void RTC_EnableInt(uint32_t u32IntFlagMask);
void RTC_DisableInt(uint32_t u32IntFlagMask);
void RTC_EnableSpareRegister(void);
void RTC_DisableSpareRegister(void);
void RTC_EnableSnooperDetection(uint32_t u32PinCondition);
void RTC_DisableSnooperDetection(void);

   

   

   







 
#line 11119 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\UART.h"
 









 












 



 



 
    
 
 
 




  
 
 
 

#line 53 "..\\..\\..\\..\\Library\\StdDriver\\inc\\UART.h"

#line 61 "..\\..\\..\\..\\Library\\StdDriver\\inc\\UART.h"

 
 
 
















 
 
 



 
 
 



 
 
 





 
 
 
#line 120 "..\\..\\..\\..\\Library\\StdDriver\\inc\\UART.h"

 
 
 




   




 











 











 












 










 












 












 











 











 











 












 











 












 












 




















 



















 



































 











 
static __inline void UART_CLEAR_RTS(UART_T* uart)
{
    (uart)->MCR |= (1ul << 9);
    (uart)->MCR &= ~(1ul << 1);
}









 
static __inline void UART_SET_RTS(UART_T* uart)
{
    (uart)->MCR |= (1ul << 9) | (1ul << 1);
}










 












 



void UART_ClearIntFlag(UART_T* uart , uint32_t u32InterruptFlag);
void UART_Close(UART_T* uart);
void UART_DisableFlowCtrl(UART_T* uart);
void UART_DisableInt(UART_T*  uart, uint32_t u32InterruptFlag);
void UART_EnableFlowCtrl(UART_T* uart);
void UART_EnableInt(UART_T*  uart, uint32_t u32InterruptFlag);
void UART_Open(UART_T* uart, uint32_t u32baudrate);
uint32_t UART_Read(UART_T* uart, uint8_t *pu8RxBuf, uint32_t u32ReadBytes);
void UART_SetLine_Config(UART_T* uart, uint32_t u32baudrate, uint32_t u32data_width, uint32_t u32parity, uint32_t  u32stop_bits);
void UART_SetTimeoutCnt(UART_T* uart, uint32_t u32TOC);
void UART_SelectIrDAMode(UART_T* uart, uint32_t u32Buadrate, uint32_t u32Direction);
void UART_SelectRS485Mode(UART_T* uart, uint32_t u32Mode, uint32_t u32Addr);
void UART_SelectLINMode(UART_T* uart, uint32_t u32Mode, uint32_t u32BreakLength);
uint32_t UART_Write(UART_T* uart, uint8_t *pu8TxBuf, uint32_t u32WriteBytes);


   

   

   







 

#line 11120 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\I2S.h"
 








 











 



 



 





 



 



 



 
#line 57 "..\\..\\..\\..\\Library\\StdDriver\\inc\\I2S.h"

#line 66 "..\\..\\..\\..\\Library\\StdDriver\\inc\\I2S.h"

 



 



   



 
 
 
 








 
static __inline void I2S_ENABLE_TX_ZCD(I2S_T *i2s, uint32_t u32ChMask)
{
    if(u32ChMask == 0)
        i2s->CON |= (1ul << 16);
    else
        i2s->CON |= (1ul << 17);
}









 
static __inline void I2S_DISABLE_TX_ZCD(I2S_T *i2s, uint32_t u32ChMask)
{
    if(u32ChMask == 0)
        i2s->CON &= ~(1ul << 16);
    else
        i2s->CON &= ~(1ul << 17);
}






 







 







 







 







 







 







 







 







 







 







 







 










 
static __inline void I2S_SET_MONO_RX_CHANNEL(I2S_T *i2s, uint32_t u32Ch)
{
    u32Ch == (1ul << 23) ?
    (i2s->CON |= (1ul << 23)) :
    (i2s->CON &= ~(1ul << 23));
}







 







 








 








 







 







 



 
uint32_t I2S_Open(I2S_T *i2s, uint32_t u32MasterSlave, uint32_t u32SampleRate, uint32_t u32WordWidth, uint32_t u32Channels, uint32_t u32DataFormat);
void I2S_Close(I2S_T *i2s);
void I2S_EnableInt(I2S_T *i2s, uint32_t u32Mask);
void I2S_DisableInt(I2S_T *i2s, uint32_t u32Mask);
uint32_t I2S_EnableMCLK(I2S_T *i2s, uint32_t u32BusClock);
void I2S_DisableMCLK(I2S_T *i2s);

   


   

   



 

#line 11121 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\USBD.h"
 









 







 



 



 


typedef struct s_usbd_info
{
    const uint8_t *gu8DevDesc;             
    const uint8_t *gu8ConfigDesc;          
    const uint8_t **gu8StringDesc;         
    const uint8_t *gu8HidReportDesc;       

} S_USBD_INFO_T;

extern const S_USBD_INFO_T gsInfo;

   





 







#line 61 "..\\..\\..\\..\\Library\\StdDriver\\inc\\USBD.h"


 




 
#line 80 "..\\..\\..\\..\\Library\\StdDriver\\inc\\USBD.h"

 
#line 89 "..\\..\\..\\..\\Library\\StdDriver\\inc\\USBD.h"

 



 
#line 101 "..\\..\\..\\..\\Library\\StdDriver\\inc\\USBD.h"

 







 



 
 
 














#line 142 "..\\..\\..\\..\\Library\\StdDriver\\inc\\USBD.h"




























   





 










 












 












 











 











 











 











 











 











 











 














 











 














 











 















 












 











 












 












 













 











 













 













 











 










 










 












 















 
static __inline void USBD_MemCopy(uint8_t *dest, uint8_t *src, int32_t size)
{
    while(size--) *dest++ = *src++;
}











 
static __inline void USBD_SetStall(uint8_t epnum)
{
    uint32_t u32CfgAddr;
    uint32_t u32Cfg;
    int i;

    for(i = 0; i < 6; i++)
    {
        u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EP[0].CFG;  
        u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

        if((u32Cfg & 0xf) == epnum)
        {
            u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EP[0].CFGP;  
            u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

            *((volatile uint32_t *)(u32CfgAddr)) = (u32Cfg | (1ul << 1));
            break;
        }
    }
}









 
static __inline void USBD_ClearStall(uint8_t epnum)
{
    uint32_t u32CfgAddr;
    uint32_t u32Cfg;
    int i;

    for(i = 0; i < 6; i++)
    {
        u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EP[0].CFG;  
        u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

        if((u32Cfg & 0xf) == epnum)
        {
            u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EP[0].CFGP;  
            u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

            *((volatile uint32_t *)(u32CfgAddr)) = (u32Cfg & ~(1ul << 1));
            break;
        }
    }
}











 
static __inline uint32_t USBD_GetStall(uint8_t epnum)
{
    uint32_t u32CfgAddr;
    uint32_t u32Cfg;
    int i;

    for(i = 0; i < 6; i++)
    {
        u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EP[0].CFG;  
        u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

        if((u32Cfg & 0xf) == epnum)
        {
            u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EP[0].CFGP;  
            break;
        }
    }

    return ((*((volatile uint32_t *)(u32CfgAddr))) & (1ul << 1));
}


extern volatile uint8_t g_usbd_RemoteWakeupEn;
typedef void (*VENDOR_REQ)(void);            
typedef void (*CLASS_REQ)(void);             
typedef void (*SET_INTERFACE_REQ)(void);     
typedef void (*SET_CONFIG_CB)(void);        

 
void USBD_Open(const S_USBD_INFO_T *param, CLASS_REQ pfnClassReq, SET_INTERFACE_REQ pfnSetInterface);
void USBD_Start(void);
void USBD_GetSetupPacket(uint8_t *buf);
void USBD_ProcessSetupPacket(void);
void USBD_StandardRequest(void);
void USBD_PrepareCtrlIn(uint8_t *pu8Buf, uint32_t u32Size);
void USBD_CtrlIn(void);
void USBD_PrepareCtrlOut(uint8_t *pu8Buf, uint32_t u32Size);
void USBD_CtrlOut(void);
void USBD_SwReset(void);
void USBD_SetVendorRequest(VENDOR_REQ pfnVendorReq);
void USBD_SetConfigCallback(SET_CONFIG_CB pfnSetConfigCallback);
void USBD_LockEpStall(uint32_t u32EpBitmap);

   

   

   




 
#line 11122 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\PDMA.h"
 









 







 



 



 

 
 
 




 
 
 





 
 
 
#line 63 "..\\..\\..\\..\\Library\\StdDriver\\inc\\PDMA.h"


   



 









 










 











 











 











 











 












 
#line 160 "..\\..\\..\\..\\Library\\StdDriver\\inc\\PDMA.h"









 


void PDMA_Open(uint32_t u32Mask);
void PDMA_Close(void);
void PDMA_SetTransferCnt(uint32_t u32Ch, uint32_t u32Width, uint32_t u32TransCount);
void PDMA_SetTransferAddr(uint32_t u32Ch, uint32_t u32SrcAddr, uint32_t u32SrcCtrl, uint32_t u32DstAddr, uint32_t u32DstCtrl);
void PDMA_SetTransferMode(uint32_t u32Ch, uint32_t u32Periphral, uint32_t u32ScatterEn, uint32_t u32DescAddr);
void PDMA_Trigger(uint32_t u32Ch);
void PDMA_EnableInt(uint32_t u32Ch, uint32_t u32Mask);
void PDMA_DisableInt(uint32_t u32Ch, uint32_t u32Mask);




 



 



 



#line 11123 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SC.h"
 








 











 



 



 
#line 37 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SC.h"

#line 48 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SC.h"


   




 





















 






















 











 
#line 121 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SC.h"











 
#line 141 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SC.h"










 
#line 160 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SC.h"










 
#line 179 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SC.h"







 









 









 








 
static __inline void SC_SetTxRetry(SC_T *sc, uint32_t u32Count)
{
    while((sc)->CTL & (1ul << 30));
    if((u32Count) == 0)         
    {
        (sc)->CTL &= ~((7ul << 20) | (1ul << 23));
    }
    else
    {
        (sc)->CTL = ((sc)->CTL & ~(7ul << 20)) | (((u32Count) - 1) << 20) | (1ul << 23);
    }
}







 
static __inline void  SC_SetRxRetry(SC_T *sc, uint32_t u32Count)
{
    while((sc)->CTL & (1ul << 30));
    if((u32Count) == 0)         
    {
        (sc)->CTL &= ~((7ul << 16) | (1ul << 19));
    }
    else
    {
        (sc)->CTL = ((sc)->CTL & ~(7ul << 16)) | (((u32Count) - 1) << 16) | (1ul << 19);
    }
}


uint32_t SC_IsCardInserted(SC_T *sc);
void SC_ClearFIFO(SC_T *sc);
void SC_Close(SC_T *sc);
void SC_Open(SC_T *sc, uint32_t u32CardDet, uint32_t u32PWR);
void SC_ResetReader(SC_T *sc);
void SC_SetBlockGuardTime(SC_T *sc, uint32_t u32BGT);
void SC_SetCharGuardTime(SC_T *sc, uint32_t u32CGT);
void SC_StopAllTimer(SC_T *sc);
void SC_StartTimer(SC_T *sc, uint32_t u32TimerNum, uint32_t u32Mode, uint32_t u32ETUCount);
void SC_StopTimer(SC_T *sc, uint32_t u32TimerNum);


   

   

   







 
#line 11124 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\PS2.h"
 








 











 



 




 

 
 
 










 











 











 












 
static __inline void PS2_CLEAR_TX_FIFO(void)
{
    ((PS2_T *) ((( uint32_t)0x40100000) + 0x00000))->PS2CON |= (1ul << 8);
    ((PS2_T *) ((( uint32_t)0x40100000) + 0x00000))->PS2CON &= ~(1ul << 8);
}









 










 











 










 










 










 










 










 










 










 










 










 



 
 
 

void PS2_Open(void);
void PS2_Close(void);
uint8_t PS2_Read(void);
int32_t PS2_Write(uint32_t *pu32Buf, uint32_t u32ByteCount);
void PS2_EnableInt(uint32_t u32Mask);
void PS2_DisableInt(uint32_t u32Mask);


   

   

   







 

#line 11125 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"
 









 










 



 



 







 
 
 






#line 53 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"


 
 
 









#line 75 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"

#line 100 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"





#line 115 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"

#line 126 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"

 
 
 










#line 160 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"

#line 171 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"

#line 182 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"

#line 193 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"

#line 204 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"








 
 
 
#line 227 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"


 
 
 






 
 
 





 
 
 










#line 269 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"








 
 
 

 

#line 293 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"

#line 302 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"


#line 400 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"


#line 422 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"

   




 







 
static __inline uint32_t CLK_GetPLLClockFreq(void)
{
    uint32_t u32PllFreq = 0, u32PllReg;
    uint32_t u32FIN, u32NF, u32NR, u32NO;
    uint8_t au8NoTbl[4] = {1, 2, 2, 4};

    u32PllReg = ((CLK_T *) ((( uint32_t)0x50000000) + 0x00200))->PLLCON;

    if(u32PllReg & ((1ul << 16) | (1ul << 18)))
        return 0;            

    if(u32PllReg & 0x00080000UL)
        u32FIN = (22118400UL);     
    else
        u32FIN = (12000000UL);      

    if(u32PllReg & (1ul << 17))
        return u32FIN;       

     
    u32NO = au8NoTbl[((u32PllReg & (3ul << 14)) >> 14)];
    u32NF = ((u32PllReg & (0x1FFul << 0)) >> 0) + 2;
    u32NR = ((u32PllReg & (0x1Ful << 9)) >> 9) + 2;

     
    u32PllFreq = (((u32FIN >> 2) * u32NF) / (u32NR * u32NO) << 2);

    return u32PllFreq;
}









 
static __inline void CLK_SysTickDelay(uint32_t us)
{
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = us * CyclesPerUs;
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL  = (0x00);
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2) | (1UL << 0);

     
    while((((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL & (1UL << 16)) == 0);
    
     
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = 0;    
}








 

static __inline void CLK_SysTickLongDelay(uint32_t us)
{
    uint32_t delay;
        
     
    delay = 335544UL;

    do
    {
        if(us > delay)
        {
            us -= delay;
        }
        else
        {
            delay = us;
            us = 0UL;
        }        
        
        ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = delay * CyclesPerUs;
        ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL  = (0x0UL);
        ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2) | (1UL << 0);

         
        while((((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL & (1UL << 16)) == 0UL);

         
        ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = 0UL;
    
    }while(us > 0UL);
    
}


void CLK_DisableCKO(void);
void CLK_EnableCKO(uint32_t u32ClkSrc, uint32_t u32ClkDiv, uint32_t u32ClkDivBy1En);
void CLK_PowerDown(void);
void CLK_Idle(void);
uint32_t CLK_GetHXTFreq(void);
uint32_t CLK_GetLXTFreq(void);
uint32_t CLK_GetHCLKFreq(void);
uint32_t CLK_GetPCLKFreq(void);
uint32_t CLK_GetCPUFreq(void);
uint32_t CLK_SetCoreClock(uint32_t u32Hclk);
void CLK_SetHCLK(uint32_t u32ClkSrc, uint32_t u32ClkDiv);
void CLK_SetModuleClock(uint32_t u32ModuleIdx, uint32_t u32ClkSrc, uint32_t u32ClkDiv);
void CLK_SetSysTickClockSrc(uint32_t u32ClkSrc);
void CLK_EnableXtalRC(uint32_t u32ClkMask);
void CLK_DisableXtalRC(uint32_t u32ClkMask);
void CLK_EnableModuleClock(uint32_t u32ModuleIdx);
void CLK_DisableModuleClock(uint32_t u32ModuleIdx);
uint32_t CLK_EnablePLL(uint32_t u32PllClkSrc, uint32_t u32PllFreq);
void CLK_DisablePLL(void);
uint32_t CLK_WaitClockReady(uint32_t u32ClkMask);
void CLK_EnableSysTick(uint32_t u32ClkSrc, uint32_t u32Count);
void CLK_DisableSysTick(void);


   

   

   







 
#line 11126 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ACMP.h"
 








 











 



 



 

 
 
 
#line 43 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ACMP.h"

   




 










 








 








 








 








 









 








 








 








 








 



 
void ACMP_Open(ACMP_T *, uint32_t u32ChNum, uint32_t u32NegSrc, uint32_t u32HysteresisEn);
void ACMP_Close(ACMP_T *, uint32_t u32ChNum);

   

   

   







 
#line 11127 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"






#line 40 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"
#line 1 "..\\..\\..\\..\\Library\\Nu-LB-NUC140\\Include\\I2Cdev.h"



#line 1 "..\\..\\..\\..\\Library\\Nu-LB-NUC140\\Include\\NVT_I2C.h"



#line 19 "..\\..\\..\\..\\Library\\Nu-LB-NUC140\\Include\\NVT_I2C.h"

#line 21 "..\\..\\..\\..\\Library\\Nu-LB-NUC140\\Include\\NVT_I2C.h"
#line 32 "..\\..\\..\\..\\Library\\Nu-LB-NUC140\\Include\\NVT_I2C.h"

void NVT_I2C_Init(uint32_t u32BusClock);
uint8_t NVT_WriteByteContinue_addr8(uint8_t address,uint8_t* data, uint8_t len);
uint8_t NVT_ReadByteContinue_addr8(uint8_t address,uint8_t* data, uint8_t len);
void    NVT_SetDeviceAddress(uint8_t devAddr);
#line 5 "..\\..\\..\\..\\Library\\Nu-LB-NUC140\\Include\\I2Cdev.h"

int8_t I2Cdev_readBytes(uint8_t devAddr, uint8_t regAddr, uint8_t length, uint8_t *data);
int8_t I2Cdev_readByte(uint8_t devAddr, uint8_t regAddr, uint8_t *data);
int8_t I2Cdev_readBits(uint8_t devAddr, uint8_t regAddr, uint8_t bitStart, uint8_t length, uint8_t *data);
int8_t I2Cdev_readBit(uint8_t devAddr, uint8_t regAddr, uint8_t bitNum, uint8_t *data);
int8_t I2Cdev_readWords(uint8_t devAddr, uint8_t regAddr, uint8_t length, uint16_t *data);
unsigned char I2Cdev_writeBytes(uint8_t devAddr, uint8_t regAddr, uint8_t length, uint8_t* data);
unsigned char I2Cdev_writeByte(uint8_t devAddr, uint8_t regAddr, uint8_t data);
unsigned char I2Cdev_writeBits(uint8_t devAddr, uint8_t regAddr, uint8_t bitStart, uint8_t length, uint8_t data);
unsigned char I2Cdev_writeBit(uint8_t devAddr, uint8_t regAddr, uint8_t bitNum, uint8_t data);
unsigned char I2Cdev_writeWord(uint8_t devAddr, uint8_t regAddr, uint16_t data);
#line 41 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"
#line 1 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\pgmspace.h"



#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\inttypes.h"
 
 





 

 








#line 20 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\inttypes.h"



#line 33 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\inttypes.h"


     

#line 51 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\inttypes.h"

#line 66 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\inttypes.h"

#line 81 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\inttypes.h"

#line 96 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\inttypes.h"

#line 111 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\inttypes.h"

#line 126 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\inttypes.h"

#line 141 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\inttypes.h"

#line 156 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\inttypes.h"

#line 171 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\inttypes.h"

#line 186 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\inttypes.h"

#line 201 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\inttypes.h"





    



      typedef unsigned short wchar_t;  
#line 221 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\inttypes.h"

typedef struct imaxdiv_t { intmax_t quot, rem; } imaxdiv_t;
    





__declspec(__nothrow) intmax_t strtoimax(const char * __restrict  ,
                   char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
     
__declspec(__nothrow) uintmax_t strtoumax(const char * __restrict  ,
                    char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
     

__declspec(__nothrow) intmax_t wcstoimax(const wchar_t * __restrict  ,
                   wchar_t ** __restrict  , int  ) __attribute__((__nonnull__(1)));
__declspec(__nothrow) uintmax_t wcstoumax(const wchar_t * __restrict  ,
                    wchar_t ** __restrict  , int  ) __attribute__((__nonnull__(1)));

extern __declspec(__nothrow) __attribute__((const)) intmax_t imaxabs(intmax_t  );
   



 
extern __declspec(__nothrow) __attribute__((const)) imaxdiv_t imaxdiv(intmax_t  , intmax_t  );
   











 







 

#line 5 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\pgmspace.h"







typedef void prog_void;
typedef char prog_char;
typedef unsigned char prog_uchar;
typedef int8_t prog_int8_t;
typedef uint8_t prog_uint8_t;
typedef int16_t prog_int16_t;
typedef uint16_t prog_uint16_t;
typedef int32_t prog_int32_t;
typedef uint32_t prog_uint32_t;

#line 29 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\pgmspace.h"






#line 43 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\pgmspace.h"

#line 42 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"
         




#line 161 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"














#line 183 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"

#line 191 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"









#line 207 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"






#line 219 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"

#line 228 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"

#line 235 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"

#line 252 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"

#line 262 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"

#line 271 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"

#line 280 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"

#line 289 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"













#line 310 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"



#line 319 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"

#line 327 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"

#line 334 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"





#line 345 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"






#line 359 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"

#line 366 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"

#line 374 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"

#line 383 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"


















typedef struct{
			float w;
            float x;
            float y;
            float z;
}Quaternion;

typedef struct{
            float x;
            float y;
            float z;
}VectorFloat;

typedef struct{
            int16_t x;
            int16_t y;
            int16_t z;
}VectorInt16;



extern void MPU6050_address(uint8_t address);
extern void MPU6050_initialize(void);
extern unsigned char MPU6050_testConnection(void);

        
uint8_t MPU6050_getAuxVDDIOLevel(void);
void MPU6050_setAuxVDDIOLevel(uint8_t level);

        
uint8_t MPU6050_getRate(void);
void MPU6050_setRate(uint8_t rate);

        
uint8_t MPU6050_getExternalFrameSync(void);
void MPU6050_setExternalFrameSync(uint8_t sync);
uint8_t MPU6050_getDLPFMode(void);
void MPU6050_setDLPFMode(uint8_t bandwidth);

        
extern uint8_t MPU6050_getFullScaleGyroRange(void);
extern void MPU6050_setFullScaleGyroRange(uint8_t range);

        
extern unsigned char MPU6050_getAccelXSelfTest(void);
void MPU6050_setAccelXSelfTest(unsigned char enabled);
extern unsigned char MPU6050_getAccelYSelfTest(void);
void MPU6050_setAccelYSelfTest(unsigned char enabled);
extern unsigned char MPU6050_getAccelZSelfTest(void);
void MPU6050_setAccelZSelfTest(unsigned char enabled);
uint8_t MPU6050_getFullScaleAccelRange(void);
void MPU6050_setFullScaleAccelRange(uint8_t range);
uint8_t MPU6050_getDHPFMode(void);
void MPU6050_setDHPFMode(uint8_t mode);

        
uint8_t MPU6050_getFreefallDetectionThreshold(void);
void MPU6050_setFreefallDetectionThreshold(uint8_t threshold);

        
uint8_t MPU6050_getFreefallDetectionDuration(void);
void MPU6050_setFreefallDetectionDuration(uint8_t duration);

        
uint8_t MPU6050_getMotionDetectionThreshold(void);
void MPU6050_setMotionDetectionThreshold(uint8_t threshold);

        
uint8_t MPU6050_getMotionDetectionDuration(void);
void MPU6050_setMotionDetectionDuration(uint8_t duration);

        
uint8_t MPU6050_getZeroMotionDetectionThreshold(void);
void MPU6050_setZeroMotionDetectionThreshold(uint8_t threshold);

        
uint8_t MPU6050_getZeroMotionDetectionDuration(void);
void MPU6050_setZeroMotionDetectionDuration(uint8_t duration);

        
unsigned char MPU6050_getTempFIFOEnabled(void);
void MPU6050_setTempFIFOEnabled(unsigned char enabled);
unsigned char MPU6050_getXGyroFIFOEnabled(void);
void MPU6050_setXGyroFIFOEnabled(unsigned char enabled);
unsigned char MPU6050_getYGyroFIFOEnabled(void);
void MPU6050_setYGyroFIFOEnabled(unsigned char enabled);
unsigned char MPU6050_getZGyroFIFOEnabled(void);
void MPU6050_setZGyroFIFOEnabled(unsigned char enabled);
unsigned char MPU6050_getAccelFIFOEnabled(void);
void MPU6050_setAccelFIFOEnabled(unsigned char enabled);
unsigned char MPU6050_getSlave2FIFOEnabled(void);
void MPU6050_setSlave2FIFOEnabled(unsigned char enabled);
unsigned char MPU6050_getSlave1FIFOEnabled(void);
void MPU6050_setSlave1FIFOEnabled(unsigned char enabled);
unsigned char MPU6050_getSlave0FIFOEnabled(void);
void MPU6050_setSlave0FIFOEnabled(unsigned char enabled);

        
unsigned char MPU6050_getMultiMasterEnabled(void);
void MPU6050_setMultiMasterEnabled(unsigned char enabled);
unsigned char MPU6050_getWaitForExternalSensorEnabled(void);
void MPU6050_setWaitForExternalSensorEnabled(unsigned char enabled);
unsigned char MPU6050_getSlave3FIFOEnabled(void);
void MPU6050_setSlave3FIFOEnabled(unsigned char enabled);
unsigned char MPU6050_getSlaveReadWriteTransitionEnabled(void);
void MPU6050_setSlaveReadWriteTransitionEnabled(unsigned char enabled);
uint8_t MPU6050_getMasterClockSpeed(void);
void MPU6050_setMasterClockSpeed(uint8_t speed);

        
uint8_t MPU6050_getSlaveAddress(uint8_t num);
void MPU6050_setSlaveAddress(uint8_t num, uint8_t address);
uint8_t MPU6050_getSlaveRegister(uint8_t num);
void MPU6050_setSlaveRegister(uint8_t num, uint8_t reg);
unsigned char MPU6050_getSlaveEnabled(uint8_t num);
void MPU6050_setSlaveEnabled(uint8_t num, unsigned char enabled);
unsigned char MPU6050_getSlaveWordByteSwap(uint8_t num);
void MPU6050_setSlaveWordByteSwap(uint8_t num, unsigned char enabled);
unsigned char MPU6050_getSlaveWriteMode(uint8_t num);
void MPU6050_setSlaveWriteMode(uint8_t num, unsigned char mode);
unsigned char MPU6050_getSlaveWordGroupOffset(uint8_t num);
void MPU6050_setSlaveWordGroupOffset(uint8_t num, unsigned char enabled);
uint8_t MPU6050_getSlaveDataLength(uint8_t num);
void MPU6050_setSlaveDataLength(uint8_t num, uint8_t length);

        
uint8_t MPU6050_getSlave4Address(void);
void MPU6050_setSlave4Address(uint8_t address);
uint8_t MPU6050_getSlave4Register(void);
void MPU6050_setSlave4Register(uint8_t reg);
void MPU6050_setSlave4OutputByte(uint8_t data);
unsigned char MPU6050_getSlave4Enabled(void);
void MPU6050_setSlave4Enabled(unsigned char enabled);
unsigned char MPU6050_getSlave4InterruptEnabled(void);
void MPU6050_setSlave4InterruptEnabled(unsigned char enabled);
unsigned char MPU6050_getSlave4WriteMode(void);
void MPU6050_setSlave4WriteMode(unsigned char mode);
uint8_t MPU6050_getSlave4MasterDelay(void);
void MPU6050_setSlave4MasterDelay(uint8_t delay);
uint8_t MPU6050_getSlate4InputByte(void);

        
unsigned char MPU6050_getPassthroughStatus(void);
unsigned char MPU6050_getSlave4IsDone(void);
unsigned char MPU6050_getLostArbitration(void);
unsigned char MPU6050_getSlave4Nack(void);
unsigned char MPU6050_getSlave3Nack(void);
unsigned char MPU6050_getSlave2Nack(void);
unsigned char MPU6050_getSlave1Nack(void);
unsigned char MPU6050_getSlave0Nack(void);

        
unsigned char MPU6050_getInterruptMode(void);
void MPU6050_setInterruptMode(unsigned char mode);
unsigned char MPU6050_getInterruptDrive(void);
void MPU6050_setInterruptDrive(unsigned char drive);
unsigned char MPU6050_getInterruptLatch(void);
void MPU6050_setInterruptLatch(unsigned char latch);
unsigned char MPU6050_getInterruptLatchClear(void);
void MPU6050_setInterruptLatchClear(unsigned char clear);
unsigned char MPU6050_getFSyncInterruptLevel(void);
void MPU6050_setFSyncInterruptLevel(unsigned char level);
unsigned char MPU6050_getFSyncInterruptEnabled(void);
void MPU6050_setFSyncInterruptEnabled(unsigned char enabled);
unsigned char MPU6050_getI2CBypassEnabled(void);
void MPU6050_setI2CBypassEnabled(unsigned char enabled);
unsigned char MPU6050_getClockOutputEnabled(void);
void MPU6050_setClockOutputEnabled(unsigned char enabled);

        
uint8_t MPU6050_getIntEnabled(void);
void MPU6050_setIntEnabled(uint8_t enabled);
unsigned char MPU6050_getIntFreefallEnabled(void);
void MPU6050_setIntFreefallEnabled(unsigned char enabled);
unsigned char MPU6050_getIntMotionEnabled(void);
void MPU6050_setIntMotionEnabled(unsigned char enabled);
unsigned char MPU6050_getIntZeroMotionEnabled(void);
void MPU6050_setIntZeroMotionEnabled(unsigned char enabled);
unsigned char MPU6050_getIntFIFOBufferOverflowEnabled(void);
void MPU6050_setIntFIFOBufferOverflowEnabled(unsigned char enabled);
unsigned char MPU6050_getIntI2CMasterEnabled(void);
void MPU6050_setIntI2CMasterEnabled(unsigned char enabled);
unsigned char MPU6050_getIntDataReadyEnabled(void);
void MPU6050_setIntDataReadyEnabled(unsigned char enabled);

        
uint8_t MPU6050_getIntStatus(void);
unsigned char MPU6050_getIntFreefallStatus(void);
unsigned char MPU6050_getIntMotionStatus(void);
unsigned char MPU6050_getIntZeroMotionStatus(void);
unsigned char MPU6050_getIntFIFOBufferOverflowStatus(void);
unsigned char MPU6050_getIntI2CMasterStatus(void);
unsigned char MPU6050_getIntDataReadyStatus(void);

        
void MPU6050_getMotion9(int16_t* ax, int16_t* ay, int16_t* az, int16_t* gx, int16_t* gy, int16_t* gz, int16_t* mx, int16_t* my, int16_t* mz);
void MPU6050_getMotion6(int16_t* ax, int16_t* ay, int16_t* az, int16_t* gx, int16_t* gy, int16_t* gz);
void MPU6050_getAcceleration(int16_t* x, int16_t* y, int16_t* z);

int16_t MPU6050_getAccelerationX(void);
int16_t MPU6050_getAccelerationY(void);
int16_t MPU6050_getAccelerationZ(void);

        
int16_t MPU6050_getTemperature(void);

        
void MPU6050_getRotation(int16_t* x, int16_t* y, int16_t* z);
int16_t MPU6050_getRotationX(void);
int16_t MPU6050_getRotationY(void);
int16_t MPU6050_getRotationZ(void);

        
uint8_t MPU6050_getExternalSensorByte(int position);
uint16_t MPU6050_getExternalSensorWord(int position);
uint32_t MPU6050_getExternalSensorDWord(int position);

        
unsigned char MPU6050_getXNegMotionDetected(void);
unsigned char MPU6050_getXPosMotionDetected(void);
unsigned char MPU6050_getYNegMotionDetected(void);
unsigned char MPU6050_getYPosMotionDetected(void);
unsigned char MPU6050_getZNegMotionDetected(void);
unsigned char MPU6050_getZPosMotionDetected(void);
unsigned char MPU6050_getZeroMotionDetected(void);

        
extern void MPU6050_setSlaveOutputByte(uint8_t num, uint8_t data);

        
unsigned char MPU6050_getExternalShadowDelayEnabled(void);
void MPU6050_setExternalShadowDelayEnabled(unsigned char enabled);
unsigned char MPU6050_getSlaveDelayEnabled(uint8_t num);
void MPU6050_setSlaveDelayEnabled(uint8_t num, unsigned char enabled);

        
void MPU6050_resetGyroscopePath(void);
void MPU6050_resetAccelerometerPath(void);
void MPU6050_resetTemperaturePath(void);

        
uint8_t MPU6050_getAccelerometerPowerOnDelay(void);
void MPU6050_setAccelerometerPowerOnDelay(uint8_t delay);
uint8_t MPU6050_getFreefallDetectionCounterDecrement(void);
void MPU6050_setFreefallDetectionCounterDecrement(uint8_t decrement);
uint8_t MPU6050_getMotionDetectionCounterDecrement(void);
void MPU6050_setMotionDetectionCounterDecrement(uint8_t decrement);

        
unsigned char MPU6050_getFIFOEnabled(void);
void MPU6050_setFIFOEnabled(unsigned char enabled);
unsigned char MPU6050_getI2CMasterModeEnabled(void);
void MPU6050_setI2CMasterModeEnabled(unsigned char enabled);
void MPU6050_switchSPIEnabled(unsigned char enabled);
void MPU6050_resetFIFO(void);
void MPU6050_resetI2CMaster(void);
void MPU6050_resetSensors(void);

        
void MPU6050_reset(void);
unsigned char MPU6050_getSleepEnabled(void);
void MPU6050_setSleepEnabled(unsigned char enabled);
unsigned char MPU6050_getWakeCycleEnabled(void);
void MPU6050_setWakeCycleEnabled(unsigned char enabled);
unsigned char MPU6050_getTempSensorEnabled(void);
void MPU6050_setTempSensorEnabled(unsigned char enabled);
uint8_t MPU6050_getClockSource(void);
void MPU6050_setClockSource(uint8_t source);

        
uint8_t MPU6050_getWakeFrequency(void);
void MPU6050_setWakeFrequency(uint8_t frequency);
unsigned char MPU6050_getStandbyXAccelEnabled(void);
void MPU6050_setStandbyXAccelEnabled(unsigned char enabled);
unsigned char MPU6050_getStandbyYAccelEnabled(void);
void MPU6050_setStandbyYAccelEnabled(unsigned char enabled);
unsigned char MPU6050_getStandbyZAccelEnabled(void);
void MPU6050_setStandbyZAccelEnabled(unsigned char enabled);
unsigned char MPU6050_getStandbyXGyroEnabled(void);
void MPU6050_setStandbyXGyroEnabled(unsigned char enabled);
unsigned char MPU6050_getStandbyYGyroEnabled(void);
void MPU6050_setStandbyYGyroEnabled(unsigned char enabled);
unsigned char MPU6050_getStandbyZGyroEnabled(void);
void MPU6050_setStandbyZGyroEnabled(unsigned char enabled);

        
uint16_t MPU6050_getFIFOCount(void);

        
uint8_t MPU6050_getFIFOByte(void);
void MPU6050_setFIFOByte(uint8_t data);
void MPU6050_getFIFOBytes(uint8_t *data, uint8_t length);

        
uint8_t MPU6050_getDeviceID(void);
void MPU6050_setDeviceID(uint8_t id);
        
        
        
        
uint8_t MPU6050_getOTPBankValid(void);
void MPU6050_setOTPBankValid(unsigned char enabled);
int8_t MPU6050_getXGyroOffsetTC(void);
void MPU6050_setXGyroOffsetTC(int8_t offset);

        
int8_t MPU6050_getYGyroOffsetTC(void);
void MPU6050_setYGyroOffsetTC(int8_t offset);

        
int8_t MPU6050_getZGyroOffsetTC(void);
void MPU6050_setZGyroOffsetTC(int8_t offset);

        
int8_t MPU6050_getXFineGain(void);
void MPU6050_setXFineGain(int8_t gain);

        
int8_t MPU6050_getYFineGain(void);
void MPU6050_setYFineGain(int8_t gain);

        
int8_t MPU6050_getZFineGain(void);
void MPU6050_setZFineGain(int8_t gain);

        
int16_t MPU6050_getXAccelOffset(void);
void MPU6050_setXAccelOffset(int16_t offset);

        
int16_t MPU6050_getYAccelOffset(void);
void MPU6050_setYAccelOffset(int16_t offset);

        
int16_t MPU6050_getZAccelOffset(void);
void MPU6050_setZAccelOffset(int16_t offset);

        
int16_t MPU6050_getXGyroOffset(void);
void MPU6050_setXGyroOffset(int16_t offset);

        
int16_t MPU6050_getYGyroOffset(void);
void MPU6050_setYGyroOffset(int16_t offset);

        
int16_t MPU6050_getZGyroOffset(void);
void MPU6050_setZGyroOffset(int16_t offset);
        
        
extern unsigned char MPU6050_getIntPLLReadyEnabled(void);
void MPU6050_setIntPLLReadyEnabled(unsigned char enabled);
extern unsigned char MPU6050_getIntDMPEnabled(void);
void MPU6050_setIntDMPEnabled(unsigned char enabled);
        
        
unsigned char MPU6050_getDMPInt5Status(void);
unsigned char MPU6050_getDMPInt4Status(void);
unsigned char MPU6050_getDMPInt3Status(void);
unsigned char MPU6050_getDMPInt2Status(void);
unsigned char MPU6050_getDMPInt1Status(void);
unsigned char MPU6050_getDMPInt0Status(void);

        
unsigned char MPU6050_getIntPLLReadyStatus(void);
unsigned char MPU6050_getIntDMPStatus(void);
        
        
extern unsigned char MPU6050_getDMPEnabled(void);
void MPU6050_setDMPEnabled(unsigned char enabled);
void MPU6050_resetDMP(void);
        
        
void MPU6050_setMemoryBank(uint8_t bank, unsigned char prefetchEnabled, unsigned char userBank);

        
void MPU6050_setMemoryStartAddress(uint8_t address);
        
        
uint8_t MPU6050_readMemoryByte(void);
void MPU6050_writeMemoryByte(uint8_t data);

void MPU6050_readMemoryBlock(uint8_t *data, uint16_t dataSize,uint8_t bank,uint8_t address);

unsigned char MPU6050_writeMemoryBlock(const uint8_t *data, uint16_t dataSize, uint8_t bank, uint8_t address, unsigned char verify, unsigned char useProgMem);

unsigned char MPU6050_writeProgMemoryBlock(const uint8_t *data, uint16_t dataSize, uint8_t bank, uint8_t address, unsigned char verify);


unsigned char MPU6050_writeDMPConfigurationSet(const uint8_t *data, uint16_t dataSize, unsigned char useProgMem);
unsigned char MPU6050_writeProgDMPConfigurationSet(const uint8_t *data, uint16_t dataSize);

        
uint8_t MPU6050_getDMPConfig1(void);
void MPU6050_setDMPConfig1(uint8_t config);

        
uint8_t MPU6050_getDMPConfig2(void);
void MPU6050_setDMPConfig2(uint8_t config);

        
#line 901 "..\\..\\..\\..\\Library\\NuMakerLib\\Include\\MPU6050.h"








































































































 
        
        


#line 40 "..\\..\\..\\..\\Library\\NuMakerLib\\Source\\MPU6050.c"
#line 41 "..\\..\\..\\..\\Library\\NuMakerLib\\Source\\MPU6050.c"

uint8_t devAddr;
uint8_t buffer[14];






 
void MPU6050_address(uint8_t address) {
    devAddr = address;
}







 
void MPU6050_initialize(void) {
    MPU6050_setClockSource(0x01);
    MPU6050_setFullScaleGyroRange(0x00);
    MPU6050_setFullScaleAccelRange(0x00);
    MPU6050_setSleepEnabled(0); 
}




 
unsigned char MPU6050_testConnection(void) {
    return MPU6050_getDeviceID() == 0x34;
}








 
uint8_t MPU6050_getAuxVDDIOLevel(void) {
    I2Cdev_readBit(devAddr, 0x01, 7, buffer);
    return buffer[0];
}





 
void MPU6050_setAuxVDDIOLevel(uint8_t level) {
    I2Cdev_writeBit(devAddr, 0x01, 7, level);
}























 
uint8_t MPU6050_getRate(void) {
    I2Cdev_readByte(devAddr, 0x19, buffer);
    return buffer[0];
}




 
void MPU6050_setRate(uint8_t rate) {
    I2Cdev_writeByte(devAddr, 0x19, rate);
}





























 
uint8_t MPU6050_getExternalFrameSync(void) {
    I2Cdev_readBits(devAddr, 0x1A, 5, 3, buffer);
    return buffer[0];
}




 
void MPU6050_setExternalFrameSync(uint8_t sync) {
    I2Cdev_writeBits(devAddr, 0x1A, 5, 3, sync);
}



























 
uint8_t MPU6050_getDLPFMode(void) {
    I2Cdev_readBits(devAddr, 0x1A, 2, 3, buffer);
    return buffer[0];
}







 
void MPU6050_setDLPFMode(uint8_t mode) {
    I2Cdev_writeBits(devAddr, 0x1A, 2, 3, mode);
}



















 
uint8_t MPU6050_getFullScaleGyroRange(void) {
    I2Cdev_readBits(devAddr, 0x1B, 4, 2, buffer);
    return buffer[0];
}







 
void MPU6050_setFullScaleGyroRange(uint8_t range) {
    I2Cdev_writeBits(devAddr, 0x1B, 4, 2, range);
}






 
unsigned char MPU6050_getAccelXSelfTest(void) {
    I2Cdev_readBit(devAddr, 0x1C, 7, buffer);
    return buffer[0];
}



 
void MPU6050_setAccelXSelfTest(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x1C, 7, enabled);
}



 
unsigned char MPU6050_getAccelYSelfTest(void) {
    I2Cdev_readBit(devAddr, 0x1C, 6, buffer);
    return buffer[0];
}



 
void MPU6050_setAccelYSelfTest(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x1C, 6, enabled);
}



 
unsigned char MPU6050_getAccelZSelfTest(void) {
    I2Cdev_readBit(devAddr, 0x1C, 5, buffer);
    return buffer[0];
}



 
void MPU6050_setAccelZSelfTest(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x1C, 5, enabled);
}
















 
uint8_t MPU6050_getFullScaleAccelRange(void) {
    I2Cdev_readBits(devAddr, 0x1C, 4, 2, buffer);
    return buffer[0];
}



 
void MPU6050_setFullScaleAccelRange(uint8_t range) {
    I2Cdev_writeBits(devAddr, 0x1C, 4, 2, range);
}


































 
uint8_t MPU6050_getDHPFMode(void) {
    I2Cdev_readBits(devAddr, 0x1C, 2, 3, buffer);
    return buffer[0];
}





 
void MPU6050_setDHPFMode(uint8_t bandwidth) {
    I2Cdev_writeBits(devAddr, 0x1C, 2, 3, bandwidth);
}

















 
uint8_t MPU6050_getFreefallDetectionThreshold(void) {
    I2Cdev_readByte(devAddr, 0x1D, buffer);
    return buffer[0];
}




 
void MPU6050_setFreefallDetectionThreshold(uint8_t threshold) {
    I2Cdev_writeByte(devAddr, 0x1D, threshold);
}



















 
uint8_t MPU6050_getFreefallDetectionDuration(void) {
    I2Cdev_readByte(devAddr, 0x1E, buffer);
    return buffer[0];
}




 
void MPU6050_setFreefallDetectionDuration(uint8_t duration) {
    I2Cdev_writeByte(devAddr, 0x1E, duration);
}





















 
uint8_t MPU6050_getMotionDetectionThreshold(void) {
    I2Cdev_readByte(devAddr, 0x1F, buffer);
    return buffer[0];
}




 
void MPU6050_setMotionDetectionThreshold(uint8_t threshold) {
    I2Cdev_writeByte(devAddr, 0x1F, threshold);
}

















 
uint8_t MPU6050_getMotionDetectionDuration(void) {
    I2Cdev_readByte(devAddr, 0x20, buffer);
    return buffer[0];
}




 
void MPU6050_setMotionDetectionDuration(uint8_t duration) {
    I2Cdev_writeByte(devAddr, 0x20, duration);
}



























 
uint8_t MPU6050_getZeroMotionDetectionThreshold(void) {
    I2Cdev_readByte(devAddr, 0x21, buffer);
    return buffer[0];
}




 
void MPU6050_setZeroMotionDetectionThreshold(uint8_t threshold) {
    I2Cdev_writeByte(devAddr, 0x21, threshold);
}


















 
uint8_t MPU6050_getZeroMotionDetectionDuration(void) {
    I2Cdev_readByte(devAddr, 0x22, buffer);
    return buffer[0];
}




 
void MPU6050_setZeroMotionDetectionDuration(uint8_t duration) {
    I2Cdev_writeByte(devAddr, 0x22, duration);
}








 
unsigned char MPU6050_getTempFIFOEnabled(void) {
    I2Cdev_readBit(devAddr, 0x23, 7, buffer);
    return buffer[0];
}




 
void MPU6050_setTempFIFOEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x23, 7, enabled);
}





 
unsigned char MPU6050_getXGyroFIFOEnabled(void) {
    I2Cdev_readBit(devAddr, 0x23, 6, buffer);
    return buffer[0];
}




 
void MPU6050_setXGyroFIFOEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x23, 6, enabled);
}





 
unsigned char MPU6050_getYGyroFIFOEnabled(void) {
    I2Cdev_readBit(devAddr, 0x23, 5, buffer);
    return buffer[0];
}




 
void MPU6050_setYGyroFIFOEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x23, 5, enabled);
}





 
unsigned char MPU6050_getZGyroFIFOEnabled(void) {
    I2Cdev_readBit(devAddr, 0x23, 4, buffer);
    return buffer[0];
}




 
void MPU6050_setZGyroFIFOEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x23, 4, enabled);
}






 
unsigned char MPU6050_getAccelFIFOEnabled(void) {
    I2Cdev_readBit(devAddr, 0x23, 3, buffer);
    return buffer[0];
}




 
void MPU6050_setAccelFIFOEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x23, 3, enabled);
}





 
unsigned char MPU6050_getSlave2FIFOEnabled(void) {
    I2Cdev_readBit(devAddr, 0x23, 2, buffer);
    return buffer[0];
}




 
void MPU6050_setSlave2FIFOEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x23, 2, enabled);
}





 
unsigned char MPU6050_getSlave1FIFOEnabled(void) {
    I2Cdev_readBit(devAddr, 0x23, 1, buffer);
    return buffer[0];
}




 
void MPU6050_setSlave1FIFOEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x23, 1, enabled);
}





 
unsigned char MPU6050_getSlave0FIFOEnabled(void) {
    I2Cdev_readBit(devAddr, 0x23, 0, buffer);
    return buffer[0];
}




 
void MPU6050_setSlave0FIFOEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x23, 0, enabled);
}

















 
unsigned char MPU6050_getMultiMasterEnabled(void) {
    I2Cdev_readBit(devAddr, 0x24, 7, buffer);
    return buffer[0];
}




 
void MPU6050_setMultiMasterEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x24, 7, enabled);
}










 
unsigned char MPU6050_getWaitForExternalSensorEnabled(void) {
    I2Cdev_readBit(devAddr, 0x24, 6, buffer);
    return buffer[0];
}




 
void MPU6050_setWaitForExternalSensorEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x24, 6, enabled);
}





 
unsigned char MPU6050_getSlave3FIFOEnabled(void) {
    I2Cdev_readBit(devAddr, 0x24, 5, buffer);
    return buffer[0];
}




 
void MPU6050_setSlave3FIFOEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x24, 5, enabled);
}









 
unsigned char MPU6050_getSlaveReadWriteTransitionEnabled(void) {
    I2Cdev_readBit(devAddr, 0x24, 4, buffer);
    return buffer[0];
}




 
void MPU6050_setSlaveReadWriteTransitionEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x24, 4, enabled);
}




























 
uint8_t MPU6050_getMasterClockSpeed(void) {
    I2Cdev_readBits(devAddr, 0x24, 3, 4, buffer);
    return buffer[0];
}



 
void MPU6050_setMasterClockSpeed(uint8_t speed) {
    I2Cdev_writeBits(devAddr, 0x24, 3, 4, speed);
}











































 
uint8_t MPU6050_getSlaveAddress(uint8_t num) {
    if (num > 3) return 0;
    I2Cdev_readByte(devAddr, 0x25 + num*3, buffer);
    return buffer[0];
}





 
void MPU6050_setSlaveAddress(uint8_t num, uint8_t address) {
    if (num > 3) return;
    I2Cdev_writeByte(devAddr, 0x25 + num*3, address);
}










 
uint8_t MPU6050_getSlaveRegister(uint8_t num) {
    if (num > 3) return 0;
    I2Cdev_readByte(devAddr, 0x26 + num*3, buffer);
    return buffer[0];
}





 
void MPU6050_setSlaveRegister(uint8_t num, uint8_t reg) {
    if (num > 3) return;
    I2Cdev_writeByte(devAddr, 0x26 + num*3, reg);
}






 
unsigned char MPU6050_getSlaveEnabled(uint8_t num) {
    if (num > 3) return 0;
    I2Cdev_readBit(devAddr, 0x27 + num*3, 7, buffer);
    return buffer[0];
}





 
void MPU6050_setSlaveEnabled(uint8_t num, unsigned char enabled) {
    if (num > 3) return;
    I2Cdev_writeBit(devAddr, 0x27 + num*3, 7, enabled);
}










 
unsigned char MPU6050_getSlaveWordByteSwap(uint8_t num) {
    if (num > 3) return 0;
    I2Cdev_readBit(devAddr, 0x27 + num*3, 6, buffer);
    return buffer[0];
}





 
void MPU6050_setSlaveWordByteSwap(uint8_t num, unsigned char enabled) {
    if (num > 3) return;
    I2Cdev_writeBit(devAddr, 0x27 + num*3, 6, enabled);
}









 
unsigned char MPU6050_getSlaveWriteMode(uint8_t num) {
    if (num > 3) return 0;
    I2Cdev_readBit(devAddr, 0x27 + num*3, 5, buffer);
    return buffer[0];
}





 
void MPU6050_setSlaveWriteMode(uint8_t num, unsigned char mode) {
    if (num > 3) return;
    I2Cdev_writeBit(devAddr, 0x27 + num*3, 5, mode);
}










 
unsigned char MPU6050_getSlaveWordGroupOffset(uint8_t num) {
    if (num > 3) return 0;
    I2Cdev_readBit(devAddr, 0x27 + num*3, 4, buffer);
    return buffer[0];
}





 
void MPU6050_setSlaveWordGroupOffset(uint8_t num, unsigned char enabled) {
    if (num > 3) return;
    I2Cdev_writeBit(devAddr, 0x27 + num*3, 4, enabled);
}






 
uint8_t MPU6050_getSlaveDataLength(uint8_t num) {
    if (num > 3) return 0;
    I2Cdev_readBits(devAddr, 0x27 + num*3, 3, 4, buffer);
    return buffer[0];
}





 
void MPU6050_setSlaveDataLength(uint8_t num, uint8_t length) {
    if (num > 3) return;
    I2Cdev_writeBits(devAddr, 0x27 + num*3, 3, 4, length);
}











 
uint8_t MPU6050_getSlave4Address(void) {
    I2Cdev_readByte(devAddr, 0x31, buffer);
    return buffer[0];
}




 
void MPU6050_setSlave4Address(uint8_t address) {
    I2Cdev_writeByte(devAddr, 0x31, address);
}






 
uint8_t MPU6050_getSlave4Register(void) {
    I2Cdev_readByte(devAddr, 0x32, buffer);
    return buffer[0];
}




 
void MPU6050_setSlave4Register(uint8_t reg) {
    I2Cdev_writeByte(devAddr, 0x32, reg);
}





 
void MPU6050_setSlave4OutputByte(uint8_t data) {
    I2Cdev_writeByte(devAddr, 0x33, data);
}





 
unsigned char MPU6050_getSlave4Enabled(void) {
    I2Cdev_readBit(devAddr, 0x34, 7, buffer);
    return buffer[0];
}




 
void MPU6050_setSlave4Enabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x34, 7, enabled);
}








 
unsigned char MPU6050_getSlave4InterruptEnabled(void) {
    I2Cdev_readBit(devAddr, 0x34, 6, buffer);
    return buffer[0];
}




 
void MPU6050_setSlave4InterruptEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x34, 6, enabled);
}








 
unsigned char MPU6050_getSlave4WriteMode(void) {
    I2Cdev_readBit(devAddr, 0x34, 5, buffer);
    return buffer[0];
}




 
void MPU6050_setSlave4WriteMode(unsigned char mode) {
    I2Cdev_writeBit(devAddr, 0x34, 5, mode);
}














 
uint8_t MPU6050_getSlave4MasterDelay(void) {
    I2Cdev_readBits(devAddr, 0x34, 4, 5, buffer);
    return buffer[0];
}




 
void MPU6050_setSlave4MasterDelay(uint8_t delay) {
    I2Cdev_writeBits(devAddr, 0x34, 4, 5, delay);
}





 
uint8_t MPU6050_getSlate4InputByte(void) {
    I2Cdev_readByte(devAddr, 0x35, buffer);
    return buffer[0];
}











 
unsigned char MPU6050_getPassthroughStatus(void) {
    I2Cdev_readBit(devAddr, 0x36, 7, buffer);
    return buffer[0];
}







 
unsigned char MPU6050_getSlave4IsDone(void) {
    I2Cdev_readBit(devAddr, 0x36, 6, buffer);
    return buffer[0];
}






 
unsigned char MPU6050_getLostArbitration(void) {
    I2Cdev_readBit(devAddr, 0x36, 5, buffer);
    return buffer[0];
}






 
unsigned char MPU6050_getSlave4Nack(void) {
    I2Cdev_readBit(devAddr, 0x36, 4, buffer);
    return buffer[0];
}






 
unsigned char MPU6050_getSlave3Nack(void) {
    I2Cdev_readBit(devAddr, 0x36, 3, buffer);
    return buffer[0];
}






 
unsigned char MPU6050_getSlave2Nack(void) {
    I2Cdev_readBit(devAddr, 0x36, 2, buffer);
    return buffer[0];
}






 
unsigned char MPU6050_getSlave1Nack(void) {
    I2Cdev_readBit(devAddr, 0x36, 1, buffer);
    return buffer[0];
}






 
unsigned char MPU6050_getSlave0Nack(void) {
    I2Cdev_readBit(devAddr, 0x36, 0, buffer);
    return buffer[0];
}








 
unsigned char MPU6050_getInterruptMode(void) {
    I2Cdev_readBit(devAddr, 0x37, 7, buffer);
    return buffer[0];
}





 
void MPU6050_setInterruptMode(unsigned char mode) {
   I2Cdev_writeBit(devAddr, 0x37, 7, mode);
}





 
unsigned char MPU6050_getInterruptDrive(void) {
    I2Cdev_readBit(devAddr, 0x37, 6, buffer);
    return buffer[0];
}





 
void MPU6050_setInterruptDrive(unsigned char drive) {
    I2Cdev_writeBit(devAddr, 0x37, 6, drive);
}





 
unsigned char MPU6050_getInterruptLatch(void) {
    I2Cdev_readBit(devAddr, 0x37, 5, buffer);
    return buffer[0];
}





 
void MPU6050_setInterruptLatch(unsigned char latch) {
    I2Cdev_writeBit(devAddr, 0x37, 5, latch);
}





 
unsigned char MPU6050_getInterruptLatchClear(void) {
    I2Cdev_readBit(devAddr, 0x37, 4, buffer);
    return buffer[0];
}





 
void MPU6050_setInterruptLatchClear(unsigned char clear) {
    I2Cdev_writeBit(devAddr, 0x37, 4, clear);
}





 
unsigned char MPU6050_getFSyncInterruptLevel(void) {
    I2Cdev_readBit(devAddr, 0x37, 3, buffer);
    return buffer[0];
}





 
void MPU6050_setFSyncInterruptLevel(unsigned char level) {
    I2Cdev_writeBit(devAddr, 0x37, 3, level);
}





 
unsigned char MPU6050_getFSyncInterruptEnabled(void) {
    I2Cdev_readBit(devAddr, 0x37, 2, buffer);
    return buffer[0];
}





 
void MPU6050_setFSyncInterruptEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x37, 2, enabled);
}










 
unsigned char MPU6050_getI2CBypassEnabled(void) {
    I2Cdev_readBit(devAddr, 0x37, 1, buffer);
    return buffer[0];
}










 
void MPU6050_setI2CBypassEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x37, 1, enabled);
}








 
unsigned char MPU6050_getClockOutputEnabled(void) {
    I2Cdev_readBit(devAddr, 0x37, 0, buffer);
    return buffer[0];
}








 
void MPU6050_setClockOutputEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x37, 0, enabled);
}









 
uint8_t MPU6050_getIntEnabled(void) {
    I2Cdev_readByte(devAddr, 0x38, buffer);
    return buffer[0];
}







 
void MPU6050_setIntEnabled(uint8_t enabled) {
    I2Cdev_writeByte(devAddr, 0x38, enabled);
}





 
unsigned char MPU6050_getIntFreefallEnabled(void) {
    I2Cdev_readBit(devAddr, 0x38, 7, buffer);
    return buffer[0];
}





 
void MPU6050_setIntFreefallEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x38, 7, enabled);
}





 
unsigned char MPU6050_getIntMotionEnabled(void) {
    I2Cdev_readBit(devAddr, 0x38, 6, buffer);
    return buffer[0];
}





 
void MPU6050_setIntMotionEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x38, 6, enabled);
}





 
unsigned char MPU6050_getIntZeroMotionEnabled(void) {
    I2Cdev_readBit(devAddr, 0x38, 5, buffer);
    return buffer[0];
}





 
void MPU6050_setIntZeroMotionEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x38, 5, enabled);
}





 
unsigned char MPU6050_getIntFIFOBufferOverflowEnabled(void) {
    I2Cdev_readBit(devAddr, 0x38, 4, buffer);
    return buffer[0];
}





 
void MPU6050_setIntFIFOBufferOverflowEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x38, 4, enabled);
}






 
unsigned char MPU6050_getIntI2CMasterEnabled(void) {
    I2Cdev_readBit(devAddr, 0x38, 3, buffer);
    return buffer[0];
}





 
void MPU6050_setIntI2CMasterEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x38, 3, enabled);
}






 
unsigned char MPU6050_getIntDataReadyEnabled(void) {
    I2Cdev_readBit(devAddr, 0x38, 0, buffer);
    return buffer[0];
}





 
void MPU6050_setIntDataReadyEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x38, 0, enabled);
}









 
uint8_t MPU6050_getIntStatus(void) {
    I2Cdev_readByte(devAddr, 0x3A, buffer);
    return buffer[0];
}






 
unsigned char MPU6050_getIntFreefallStatus(void) {
    I2Cdev_readBit(devAddr, 0x3A, 7, buffer);
    return buffer[0];
}






 
unsigned char MPU6050_getIntMotionStatus(void) {
    I2Cdev_readBit(devAddr, 0x3A, 6, buffer);
    return buffer[0];
}






 
unsigned char MPU6050_getIntZeroMotionStatus(void) {
    I2Cdev_readBit(devAddr, 0x3A, 5, buffer);
    return buffer[0];
}






 
unsigned char MPU6050_getIntFIFOBufferOverflowStatus(void) {
    I2Cdev_readBit(devAddr, 0x3A, 4, buffer);
    return buffer[0];
}







 
unsigned char MPU6050_getIntI2CMasterStatus(void) {
    I2Cdev_readBit(devAddr, 0x3A, 3, buffer);
    return buffer[0];
}






 
unsigned char MPU6050_getIntDataReadyStatus(void) {
    I2Cdev_readBit(devAddr, 0x3A, 0, buffer);
    return buffer[0];
}


















 
void MPU6050_getMotion9(int16_t* ax, int16_t* ay, int16_t* az, int16_t* gx, int16_t* gy, int16_t* gz, int16_t* mx, int16_t* my, int16_t* mz) {
    MPU6050_getMotion6(ax, ay, az, gx, gy, gz);
    
}











 
void MPU6050_getMotion6(int16_t* ax, int16_t* ay, int16_t* az, int16_t* gx, int16_t* gy, int16_t* gz) {
    I2Cdev_readBytes(devAddr, 0x3B, 14, buffer);
    *ax = (((int16_t)buffer[0]) << 8) | buffer[1];
    *ay = (((int16_t)buffer[2]) << 8) | buffer[3];
    *az = (((int16_t)buffer[4]) << 8) | buffer[5];
    *gx = (((int16_t)buffer[8]) << 8) | buffer[9];
    *gy = (((int16_t)buffer[10]) << 8) | buffer[11];
    *gz = (((int16_t)buffer[12]) << 8) | buffer[13];
}



































 
void MPU6050_getAcceleration(int16_t* x, int16_t* y, int16_t* z) {
    I2Cdev_readBytes(devAddr, 0x3B, 6, buffer);
    x[0] = (((int16_t)buffer[0]) << 8) | buffer[1];
    y[0] = (((int16_t)buffer[2]) << 8) | buffer[3];
    z[0] = (((int16_t)buffer[4]) << 8) | buffer[5];
}




 
int16_t MPU6050_getAccelerationX(void) {
    I2Cdev_readBytes(devAddr, 0x3B, 2, buffer);	
    return (((int16_t)buffer[0]) << 8) | buffer[1];
}




 
int16_t MPU6050_getAccelerationY(void) {
    I2Cdev_readBytes(devAddr, 0x3D, 2, buffer);
    return (((int16_t)buffer[0]) << 8) | buffer[1];
}




 
int16_t MPU6050_getAccelerationZ(void) {
    I2Cdev_readBytes(devAddr, 0x3F, 2, buffer);
    return (((int16_t)buffer[0]) << 8) | buffer[1];
}






 
int16_t MPU6050_getTemperature(void) {
    I2Cdev_readBytes(devAddr, 0x41, 2, buffer);
    return (((int16_t)buffer[0]) << 8) | buffer[1];
}


































 
void MPU6050_getRotation(int16_t* x, int16_t* y, int16_t* z) {
    I2Cdev_readBytes(devAddr, 0x43, 6, buffer);
    *x = (((int16_t)buffer[0]) << 8) | buffer[1];
    *y = (((int16_t)buffer[2]) << 8) | buffer[3];
    *z = (((int16_t)buffer[4]) << 8) | buffer[5];
}




 
int16_t MPU6050_getRotationX(void) {
    I2Cdev_readBytes(devAddr, 0x43, 2, buffer);
    return (((int16_t)buffer[0]) << 8) | buffer[1];
}




 
int16_t MPU6050_getRotationY(void) {
    I2Cdev_readBytes(devAddr, 0x45, 2, buffer);
    return (((int16_t)buffer[0]) << 8) | buffer[1];
}




 
int16_t MPU6050_getRotationZ(void) {
    I2Cdev_readBytes(devAddr, 0x47, 2, buffer);
    return (((int16_t)buffer[0]) << 8) | buffer[1];
}












































































 
uint8_t MPU6050_getExternalSensorByte(int position) {
    I2Cdev_readByte(devAddr, 0x49 + position, buffer);
    return buffer[0];
}




 
uint16_t MPU6050_getExternalSensorWord(int position) {
    I2Cdev_readBytes(devAddr, 0x49 + position, 2, buffer);
    return (((uint16_t)buffer[0]) << 8) | buffer[1];
}




 
uint32_t MPU6050_getExternalSensorDWord(int position) {
    I2Cdev_readBytes(devAddr, 0x49 + position, 4, buffer);
    return (((uint32_t)buffer[0]) << 24) | (((uint32_t)buffer[1]) << 16) | (((uint16_t)buffer[2]) << 8) | buffer[3];
}







 
unsigned char MPU6050_getXNegMotionDetected(void) {
    I2Cdev_readBit(devAddr, 0x61, 7, buffer);
    return buffer[0];
}




 
unsigned char MPU6050_getXPosMotionDetected(void) {
    I2Cdev_readBit(devAddr, 0x61, 6, buffer);
    return buffer[0];
}




 
unsigned char MPU6050_getYNegMotionDetected(void) {
    I2Cdev_readBit(devAddr, 0x61, 5, buffer);
    return buffer[0];
}




 
unsigned char MPU6050_getYPosMotionDetected(void) {
    I2Cdev_readBit(devAddr, 0x61, 4, buffer);
    return buffer[0];
}




 
unsigned char MPU6050_getZNegMotionDetected(void) {
    I2Cdev_readBit(devAddr, 0x61, 3, buffer);
    return buffer[0];
}




 
unsigned char MPU6050_getZPosMotionDetected(void) {
    I2Cdev_readBit(devAddr, 0x61, 2, buffer);
    return buffer[0];
}




 
unsigned char MPU6050_getZeroMotionDetected(void) {
    I2Cdev_readBit(devAddr, 0x61, 0, buffer);
    return buffer[0];
}










 
void MPU6050_setSlaveOutputByte(uint8_t num, uint8_t data) {
    if (num > 3) return;
    I2Cdev_writeByte(devAddr, 0x63 + num, data);
}










 
unsigned char MPU6050_getExternalShadowDelayEnabled(void) {
    I2Cdev_readBit(devAddr, 0x67, 7, buffer);
    return buffer[0];
}





 
void MPU6050_setExternalShadowDelayEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x67, 7, enabled);
}

















 
unsigned char MPU6050_getSlaveDelayEnabled(uint8_t num) {
    
    if (num > 4) return 0;
    I2Cdev_readBit(devAddr, 0x67, num, buffer);
    return buffer[0];
}





 
void MPU6050_setSlaveDelayEnabled(uint8_t num, unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x67, num, enabled);
}








 
void MPU6050_resetGyroscopePath(void) {
    I2Cdev_writeBit(devAddr, 0x68, 2, 1);
}





 
void MPU6050_resetAccelerometerPath(void) {
    I2Cdev_writeBit(devAddr, 0x68, 1, 1);
}





 
void MPU6050_resetTemperaturePath(void) {
    I2Cdev_writeBit(devAddr, 0x68, 0, 1);
}
















 
uint8_t MPU6050_getAccelerometerPowerOnDelay(void) {
    I2Cdev_readBits(devAddr, 0x69, 5, 2, buffer);
    return buffer[0];
}





 
void MPU6050_setAccelerometerPowerOnDelay(uint8_t delay) {
    I2Cdev_writeBits(devAddr, 0x69, 5, 2, delay);
}

























 
uint8_t MPU6050_getFreefallDetectionCounterDecrement(void) {
    I2Cdev_readBits(devAddr, 0x69, 3, 2, buffer);
    return buffer[0];
}





 
void MPU6050_setFreefallDetectionCounterDecrement(uint8_t decrement) {
    I2Cdev_writeBits(devAddr, 0x69, 3, 2, decrement);
}






















 
uint8_t MPU6050_getMotionDetectionCounterDecrement(void) {
    I2Cdev_readBits(devAddr, 0x69, 1, 2, buffer);
    return buffer[0];
}





 
void MPU6050_setMotionDetectionCounterDecrement(uint8_t decrement) {
    I2Cdev_writeBits(devAddr, 0x69, 1, 2, decrement);
}










 
unsigned char MPU6050_getFIFOEnabled(void) {
    I2Cdev_readBit(devAddr, 0x6A, 6, buffer);
    return buffer[0];
}





 
void MPU6050_setFIFOEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x6A, 6, enabled);
}










 
unsigned char MPU6050_getI2CMasterModeEnabled(void) {
    I2Cdev_readBit(devAddr, 0x6A, 5, buffer);
    return buffer[0];
}





 
void MPU6050_setI2CMasterModeEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x6A, 5, enabled);
}



 
void MPU6050_switchSPIEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x6A, 4, enabled);
}





 
void MPU6050_resetFIFO(void) {
    I2Cdev_writeBit(devAddr, 0x6A, 2, 1);
}





 
void MPU6050_resetI2CMaster(void) {
    I2Cdev_writeBit(devAddr, 0x6A, 1, 1);
}











 
void MPU6050_resetSensors(void) {
    I2Cdev_writeBit(devAddr, 0x6A, 0, 1);
}







 
void MPU6050_reset(void) {
    I2Cdev_writeBit(devAddr, 0x6B, 7, 1);
}










 
unsigned char MPU6050_getSleepEnabled(void) {
    I2Cdev_readBit(devAddr, 0x6B, 6, buffer);
    return buffer[0];
}





 
void MPU6050_setSleepEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x6B, 6, enabled);
}







 
unsigned char MPU6050_getWakeCycleEnabled(void) {
    I2Cdev_readBit(devAddr, 0x6B, 5, buffer);
    return buffer[0];
}





 
void MPU6050_setWakeCycleEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x6B, 5, enabled);
}










 
unsigned char MPU6050_getTempSensorEnabled(void) {
    I2Cdev_readBit(devAddr, 0x6B, 3, buffer);
    return buffer[0] == 0; 
}









 
void MPU6050_setTempSensorEnabled(unsigned char enabled) {
    
    I2Cdev_writeBit(devAddr, 0x6B, 3, !enabled);
}





 
uint8_t MPU6050_getClockSource(void) {
    I2Cdev_readBits(devAddr, 0x6B, 2, 3, buffer);
    return buffer[0];
}





























 
void MPU6050_setClockSource(uint8_t source) {
    I2Cdev_writeBits(devAddr, 0x6B, 2, 3, source);
}

























 
uint8_t MPU6050_getWakeFrequency(void) {
    I2Cdev_readBits(devAddr, 0x6C, 7, 2, buffer);
    return buffer[0];
}



 
void MPU6050_setWakeFrequency(uint8_t frequency) {
    I2Cdev_writeBits(devAddr, 0x6C, 7, 2, frequency);
}






 
unsigned char MPU6050_getStandbyXAccelEnabled(void) {
    I2Cdev_readBit(devAddr, 0x6C, 5, buffer);
    return buffer[0];
}





 
void MPU6050_setStandbyXAccelEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x6C, 5, enabled);
}





 
unsigned char MPU6050_getStandbyYAccelEnabled(void) {
    I2Cdev_readBit(devAddr, 0x6C, 4, buffer);
    return buffer[0];
}





 
void MPU6050_setStandbyYAccelEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x6C, 4, enabled);
}





 
unsigned char MPU6050_getStandbyZAccelEnabled(void) {
    I2Cdev_readBit(devAddr, 0x6C, 3, buffer);
    return buffer[0];
}





 
void MPU6050_setStandbyZAccelEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x6C, 3, enabled);
}





 
unsigned char MPU6050_getStandbyXGyroEnabled(void) {
    I2Cdev_readBit(devAddr, 0x6C, 2, buffer);
    return buffer[0];
}





 
void MPU6050_setStandbyXGyroEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x6C, 2, enabled);
}





 
unsigned char MPU6050_getStandbyYGyroEnabled(void) {
    I2Cdev_readBit(devAddr, 0x6C, 1, buffer);
    return buffer[0];
}





 
void MPU6050_setStandbyYGyroEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x6C, 1, enabled);
}





 
unsigned char MPU6050_getStandbyZGyroEnabled(void) {
    I2Cdev_readBit(devAddr, 0x6C, 0, buffer);
    return buffer[0];
}





 
void MPU6050_setStandbyZGyroEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x6C, 0, enabled);
}









 
uint16_t MPU6050_getFIFOCount(void) {
    I2Cdev_readBytes(devAddr, 0x72, 2, buffer);
    return (((uint16_t)buffer[0]) << 8) | buffer[1];
}



























 
uint8_t MPU6050_getFIFOByte(void) {
    I2Cdev_readByte(devAddr, 0x74, buffer);
    return buffer[0];
}
void MPU6050_getFIFOBytes(uint8_t *data, uint8_t length) {
    I2Cdev_readBytes(devAddr, 0x74, length, data);
}



 
void MPU6050_setFIFOByte(uint8_t data) {
    I2Cdev_writeByte(devAddr, 0x74, data);
}









 
uint8_t MPU6050_getDeviceID(void) {
    I2Cdev_readBits(devAddr, 0x75, 6, 6, buffer);
    return buffer[0];
}








 
void MPU6050_setDeviceID(uint8_t id) {
    I2Cdev_writeBits(devAddr, 0x75, 6, 6, id);
}





uint8_t MPU6050_getOTPBankValid(void) {
    I2Cdev_readBit(devAddr, 0x00, 0, buffer);
    return buffer[0];
}
void MPU6050_setOTPBankValid(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x00, 0, enabled);
}
int8_t MPU6050_getXGyroOffsetTC(void) {
    I2Cdev_readBits(devAddr, 0x00, 6, 6, buffer);
    return buffer[0];
}
void MPU6050_setXGyroOffsetTC(int8_t offset) {
    I2Cdev_writeBits(devAddr, 0x00, 6, 6, offset);
}



int8_t MPU6050_getYGyroOffsetTC(void) {
    I2Cdev_readBits(devAddr, 0x01, 6, 6, buffer);
    return buffer[0];
}
void MPU6050_setYGyroOffsetTC(int8_t offset) {
    I2Cdev_writeBits(devAddr, 0x01, 6, 6, offset);
}



int8_t MPU6050_getZGyroOffsetTC(void) {
    I2Cdev_readBits(devAddr, 0x02, 6, 6, buffer);
    return buffer[0];
}
void MPU6050_setZGyroOffsetTC(int8_t offset) {
    I2Cdev_writeBits(devAddr, 0x02, 6, 6, offset);
}



int8_t MPU6050_getXFineGain(void) {
    I2Cdev_readByte(devAddr, 0x03, buffer);
    return buffer[0];
}
void MPU6050_setXFineGain(int8_t gain) {
    I2Cdev_writeByte(devAddr, 0x03, gain);
}



int8_t MPU6050_getYFineGain(void) {
    I2Cdev_readByte(devAddr, 0x04, buffer);
    return buffer[0];
}
void MPU6050_setYFineGain(int8_t gain) {
    I2Cdev_writeByte(devAddr, 0x04, gain);
}



int8_t MPU6050_getZFineGain(void) {
    I2Cdev_readByte(devAddr, 0x05, buffer);
    return buffer[0];
}
void MPU6050_setZFineGain(int8_t gain) {
    I2Cdev_writeByte(devAddr, 0x05, gain);
}



int16_t MPU6050_getXAccelOffset(void) {
    I2Cdev_readBytes(devAddr, 0x06, 2, buffer);
    return (((int16_t)buffer[0]) << 8) | buffer[1];
}
void MPU6050_setXAccelOffset(int16_t offset) {
    I2Cdev_writeWord(devAddr, 0x06, offset);
}



int16_t MPU6050_getYAccelOffset(void) {
    I2Cdev_readBytes(devAddr, 0x08, 2, buffer);
    return (((int16_t)buffer[0]) << 8) | buffer[1];
}
void MPU6050_setYAccelOffset(int16_t offset) {
    I2Cdev_writeWord(devAddr, 0x08, offset);
}



int16_t MPU6050_getZAccelOffset(void) {
    I2Cdev_readBytes(devAddr, 0x0A, 2, buffer);
    return (((int16_t)buffer[0]) << 8) | buffer[1];
}
void MPU6050_setZAccelOffset(int16_t offset) {
    I2Cdev_writeWord(devAddr, 0x0A, offset);
}



int16_t MPU6050_getXGyroOffset(void) {
    I2Cdev_readBytes(devAddr, 0x13, 2, buffer);
    return (((int16_t)buffer[0]) << 8) | buffer[1];
}
void MPU6050_setXGyroOffset(int16_t offset) {
    I2Cdev_writeWord(devAddr, 0x13, offset);
}



int16_t MPU6050_getYGyroOffset(void) {
    I2Cdev_readBytes(devAddr, 0x15, 2, buffer);
    return (((int16_t)buffer[0]) << 8) | buffer[1];
}
void MPU6050_setYGyroOffset(int16_t offset) {
    I2Cdev_writeWord(devAddr, 0x15, offset);
}



int16_t MPU6050_getZGyroOffset(void) {
    I2Cdev_readBytes(devAddr, 0x17, 2, buffer);
    return (((int16_t)buffer[0]) << 8) | buffer[1];
}
void MPU6050_setZGyroOffset(int16_t offset) {
    I2Cdev_writeWord(devAddr, 0x17, offset);
}



unsigned char MPU6050_getIntPLLReadyEnabled(void) {
    I2Cdev_readBit(devAddr, 0x38, 2, buffer);
    return buffer[0];
}
void MPU6050_setIntPLLReadyEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x38, 2, enabled);
}
unsigned char MPU6050_getIntDMPEnabled(void) {
    I2Cdev_readBit(devAddr, 0x38, 1, buffer);
    return buffer[0];
}
void MPU6050_setIntDMPEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x38, 1, enabled);
}



unsigned char MPU6050_getDMPInt5Status(void) {
    I2Cdev_readBit(devAddr, 0x39, 5, buffer);
    return buffer[0];
}
unsigned char MPU6050_getDMPInt4Status(void) {
    I2Cdev_readBit(devAddr, 0x39, 4, buffer);
    return buffer[0];
}
unsigned char MPU6050_getDMPInt3Status(void) {
    I2Cdev_readBit(devAddr, 0x39, 3, buffer);
    return buffer[0];
}
unsigned char MPU6050_getDMPInt2Status(void) {
    I2Cdev_readBit(devAddr, 0x39, 2, buffer);
    return buffer[0];
}
unsigned char MPU6050_getDMPInt1Status(void) {
    I2Cdev_readBit(devAddr, 0x39, 1, buffer);
    return buffer[0];
}
unsigned char MPU6050_getDMPInt0Status(void) {
    I2Cdev_readBit(devAddr, 0x39, 0, buffer);
    return buffer[0];
}



unsigned char MPU6050_getIntPLLReadyStatus(void) {
    I2Cdev_readBit(devAddr, 0x3A, 2, buffer);
    return buffer[0];
}
unsigned char MPU6050_getIntDMPStatus(void) {
    I2Cdev_readBit(devAddr, 0x3A, 1, buffer);
    return buffer[0];
}



unsigned char MPU6050_getDMPEnabled(void) {
    I2Cdev_readBit(devAddr, 0x6A, 7, buffer);
    return buffer[0];
}
void MPU6050_setDMPEnabled(unsigned char enabled) {
    I2Cdev_writeBit(devAddr, 0x6A, 7, enabled);
}
void MPU6050_resetDMP(void) {
    I2Cdev_writeBit(devAddr, 0x6A, 3, 1);
}



void MPU6050_setMemoryBank(uint8_t bank, unsigned char prefetchEnabled, unsigned char userBank) {	
    bank &= 0x1F;
    if (userBank) bank |= 0x20;
    if (prefetchEnabled) bank |= 0x40;
    I2Cdev_writeByte(devAddr, 0x6D, bank);
}



void MPU6050_setMemoryStartAddress(uint8_t address) {
    I2Cdev_writeByte(devAddr, 0x6E, address);
}



uint8_t MPU6050_readMemoryByte(void) {
    I2Cdev_readByte(devAddr, 0x6F, buffer);
    return buffer[0];
}

void MPU6050_writeMemoryByte(uint8_t data) {
    I2Cdev_writeByte(devAddr, 0x6F, data);
}

void MPU6050_readMemoryBlock(uint8_t *data, uint16_t dataSize, uint8_t bank, uint8_t address) {
    uint8_t chunkSize;
	  uint16_t i=0;
    MPU6050_setMemoryBank(bank, 0, 0);
    MPU6050_setMemoryStartAddress(address);

    while(i < dataSize) {
        
        chunkSize = 16;

        
        if (i + chunkSize > dataSize) chunkSize = dataSize - i;

        
        if (chunkSize > 256 - address) chunkSize = 256 - address;

        
				I2Cdev_readBytes(devAddr, 0x6F, chunkSize, data);			
        
        i += chunkSize;

        
        address += chunkSize;

        
        if (i < dataSize) {
            if (address == 0) bank++;
            MPU6050_setMemoryBank(bank, 0, 0);
            MPU6050_setMemoryStartAddress(address);
        }
    }
}

unsigned char MPU6050_writeMemoryBlock(const uint8_t *data, uint16_t dataSize, uint8_t bank, uint8_t address, unsigned char verify, unsigned char useProgMem) {
    uint8_t chunkSize;
    uint8_t *verifyBuffer;
    uint8_t *progBuffer;
    uint16_t i=0, j;
    MPU6050_setMemoryBank(bank, 0, 0);
    MPU6050_setMemoryStartAddress(address);	
    if (verify) verifyBuffer = (uint8_t *)malloc(16);
    if (useProgMem) progBuffer = (uint8_t *)malloc(16);

	  while(i < dataSize) {
        
        chunkSize = 16;

        
        if (i + chunkSize > dataSize) chunkSize = dataSize - i;

        
        if (chunkSize > 256 - address) chunkSize = 256 - address;
        
        if (useProgMem) {
            
            for (j = 0; j < chunkSize; j++) progBuffer[j] = (*(const unsigned char *)(data + i + j));
        } else {
            
            progBuffer = (uint8_t *)data + i;
        }

        I2Cdev_writeBytes(devAddr, 0x6F, chunkSize, progBuffer);

        
        if (verify && verifyBuffer) {
            MPU6050_setMemoryBank(bank, 0, 0);
            MPU6050_setMemoryStartAddress(address);
					  
            I2Cdev_readBytes(devAddr, 0x6F, chunkSize, verifyBuffer);				
            if (memcmp(progBuffer, verifyBuffer, chunkSize) != 0) {
                















 
                free(verifyBuffer);
                if (useProgMem) free(progBuffer);
                return 0; 
            }
        }

        
        i += chunkSize;

        
        address += chunkSize;

        
        if (i < dataSize) {
            if (address == 0) bank++;
            MPU6050_setMemoryBank(bank, 0, 0);
            MPU6050_setMemoryStartAddress(address);
        }
    }
    if (verify) free(verifyBuffer);
    if (useProgMem) free(progBuffer);
    return 1;
}
unsigned char MPU6050_writeProgMemoryBlock(const uint8_t *data, uint16_t dataSize, uint8_t bank, uint8_t address, unsigned char verify) {
    return MPU6050_writeMemoryBlock(data, dataSize, bank, address, verify, 1);
}
unsigned char MPU6050_writeDMPConfigurationSet(const uint8_t *data, uint16_t dataSize, unsigned char useProgMem) {
    uint8_t *progBuffer, success, special;
    uint16_t i, j;
    uint8_t bank, offset, length;
	
    if (useProgMem) {
        progBuffer = (uint8_t *)malloc(8); 
    }

    
    

    for (i = 0; i < dataSize;) {
        if (useProgMem) {
            bank = (*(const unsigned char *)(data + i++));
            offset = (*(const unsigned char *)(data + i++));
            length = (*(const unsigned char *)(data + i++));
        } else {
            bank = data[i++];
            offset = data[i++];
            length = data[i++];
        }

        
        if (length > 0) {
            
            printf("Writing config block to bank=%d, offset=%d, length=%d\n", bank, offset, length);
            if (useProgMem) {
                if (sizeof(progBuffer) < length) progBuffer = (uint8_t *)realloc(progBuffer, length);
                for (j = 0; j < length; j++) progBuffer[j] = (*(const unsigned char *)(data + i + j));
            } else {
                progBuffer = (uint8_t *)data + i;
            }
            success = MPU6050_writeMemoryBlock(progBuffer, length, bank, offset, 1, 0);
            i += length;
        } else {
            
            
            
            
            
            if (useProgMem) {
                special = (*(const unsigned char *)(data + i++));
            } else {
                special = data[i++];
            }
            printf("Special command code %x ", special);
            printf(" found...\n");
            if (special == 0x01) {
                
                
                
                
                
                I2Cdev_writeByte(devAddr, 0x38, 0x32);  

                success = 1;
            } else {
                
                success = 0;
            }
        }
        
        if (!success) {
            if (useProgMem) free(progBuffer);
            return 0; 
        }
    }
    if (useProgMem) free(progBuffer);
    return 1;
}
unsigned char MPU6050_writeProgDMPConfigurationSet(const uint8_t *data, uint16_t dataSize) {
    return MPU6050_writeDMPConfigurationSet(data, dataSize, 1);
}



uint8_t MPU6050_getDMPConfig1(void) {
    I2Cdev_readByte(devAddr, 0x70, buffer);
    return buffer[0];
}
void MPU6050_setDMPConfig1(uint8_t config) {
    I2Cdev_writeByte(devAddr, 0x70, config);
}



uint8_t MPU6050_getDMPConfig2(void) {
    I2Cdev_readByte(devAddr, 0x71, buffer);
    return buffer[0];
}
void MPU6050_setDMPConfig2(uint8_t config) {
    I2Cdev_writeByte(devAddr, 0x71, config);
}
