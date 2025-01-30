/**
 * \defgroup utils utils 
 * \ingroup concurrency-library
 * \brief Useful common functions and macros.
 * \author Miguel Oliveira e Silva, 2017-2018
 *  @{ 
 **/

/*!
 * \file
 *
 * \brief Useful common functions and macros.
 **/

#ifndef UTILS_H
#define UTILS_H

#include <stdio.h>
#include <string.h>
#include <errno.h>
#include "dbc.h"

/** @name String concatenation in stack memory
 *  @anchor concat @{
 */
/**
 *  \brief Concatenates two strings in the stack memory (thus it cannot be implemented in a function).
 *
 *  \details A `NULL` reference is treated as an empty string.
 *
 *  \param [in] str1 string 1
 *  \param [in] str2 string 2
 *
 *  \return the concatenated string
 */
#define concat_2str(str1,str2) \
        ({ \
           char* s1 = (str1) == NULL ? (char*)"" : (char*)(str1); \
           char* s2 = (str2) == NULL ? (char*)"" : (char*)(str2); \
           char* __res__ = (char*)alloca(strlen(s1)+strlen(s2)+1); \
           strcpy(__res__, s1); \
           strcat(__res__, s2); \
           __res__; \
        })

/**
 *  \brief Concatenates three strings in the stack memory (thus it cannot be implemented in a function).
 *
 *  \details A `NULL` reference is treated as an empty string.
 *
 *  \param [in] str1 string 1
 *  \param [in] str2 string 2
 *  \param [in] str3 string 3
 *
 *  \return the concatenated string
 */
#define concat_3str(str1,str2,str3) \
        ({ \
           char* s1 = (str1) == NULL ? (char*)"" : (char*)(str1); \
           char* s2 = (str2) == NULL ? (char*)"" : (char*)(str2); \
           char* s3 = (str3) == NULL ? (char*)"" : (char*)(str3); \
           char* __res__ = (char*)alloca(strlen(s1)+strlen(s2)+strlen(s3)+1); \
           strcpy(__res__, s1); \
           strcat(__res__, s2); \
           strcat(__res__, s3); \
           __res__; \
        })

/**
 *  \brief Concatenates four strings in the stack memory (thus it cannot be implemented in a function).
 *
 *  \details A `NULL` reference is treated as an empty string.
 *
 *  \param [in] str1 string 1
 *  \param [in] str2 string 2
 *  \param [in] str3 string 3
 *  \param [in] str4 string 4
 *
 *  \return the concatenated string
 */
#define concat_4str(str1,str2,str3,str4) \
        ({ \
           char* s1 = (str1) == NULL ? (char*)"" : (char*)(str1); \
           char* s2 = (str2) == NULL ? (char*)"" : (char*)(str2); \
           char* s3 = (str3) == NULL ? (char*)"" : (char*)(str3); \
           char* s4 = (str4) == NULL ? (char*)"" : (char*)(str4); \
           char* __res__ = (char*)alloca(strlen(s1)+strlen(s2)+strlen(s3)+strlen(s4)+1); \
           strcpy(__res__, s1); \
           strcat(__res__, s2); \
           strcat(__res__, s3); \
           strcat(__res__, s4); \
           __res__; \
        })

/**
 *  \brief Concatenates five strings in the stack memory (thus it cannot be implemented in a function).
 *
 *  \details A `NULL` reference is treated as an empty string.
 *
 *  \param [in] str1 string 1
 *  \param [in] str2 string 2
 *  \param [in] str3 string 3
 *  \param [in] str4 string 4
 *  \param [in] str5 string 5
 *
 *  \return the concatenated string
 */
#define concat_5str(str1,str2,str3,str4,str5) \
        ({ \
           char* s1 = (str1) == NULL ? (char*)"" : (char*)(str1); \
           char* s2 = (str2) == NULL ? (char*)"" : (char*)(str2); \
           char* s3 = (str3) == NULL ? (char*)"" : (char*)(str3); \
           char* s4 = (str4) == NULL ? (char*)"" : (char*)(str4); \
           char* s5 = (str5) == NULL ? (char*)"" : (char*)(str5); \
           char* __res__ = (char*)alloca(strlen(s1)+strlen(s2)+strlen(s3)+strlen(s4)+strlen(s5)+1); \
           strcpy(__res__, s1); \
           strcat(__res__, s2); \
           strcat(__res__, s3); \
           strcat(__res__, s4); \
           strcat(__res__, s5); \
           __res__; \
        })

/**
 *  \brief Concatenates six strings in the stack memory (thus it cannot be implemented in a function).
 *
 *  \details A `NULL` reference is treated as an empty string.
 *
 *  \param [in] str1 string 1
 *  \param [in] str2 string 2
 *  \param [in] str3 string 3
 *  \param [in] str4 string 4
 *  \param [in] str5 string 5
 *  \param [in] str6 string 6
 *
 *  \return the concatenated string
 */
#define concat_6str(str1,str2,str3,str4,str5,str6) \
        ({ \
           char* s1 = (str1) == NULL ? (char*)"" : (char*)(str1); \
           char* s2 = (str2) == NULL ? (char*)"" : (char*)(str2); \
           char* s3 = (str3) == NULL ? (char*)"" : (char*)(str3); \
           char* s4 = (str4) == NULL ? (char*)"" : (char*)(str4); \
           char* s5 = (str5) == NULL ? (char*)"" : (char*)(str5); \
           char* s6 = (str6) == NULL ? (char*)"" : (char*)(str6); \
           char* __res__ = (char*)alloca(strlen(s1)+strlen(s2)+strlen(s3)+strlen(s4)+strlen(s5)+strlen(s6)+1); \
           strcpy(__res__, s1); \
           strcat(__res__, s2); \
           strcat(__res__, s3); \
           strcat(__res__, s4); \
           strcat(__res__, s5); \
           strcat(__res__, s6); \
           __res__; \
        })

/**
 *  \brief Concatenates seven strings in the stack memory (thus it cannot be implemented in a function).
 *
 *  \details A `NULL` reference is treated as an empty string.
 *
 *  \param [in] str1 string 1
 *  \param [in] str2 string 2
 *  \param [in] str3 string 3
 *  \param [in] str4 string 4
 *  \param [in] str5 string 5
 *  \param [in] str6 string 6
 *  \param [in] str7 string 7
 *
 *  \return the concatenated string
 */
#define concat_7str(str1,str2,str3,str4,str5,str6,str7) \
        ({ \
           char* s1 = (str1) == NULL ? (char*)"" : (char*)(str1); \
           char* s2 = (str2) == NULL ? (char*)"" : (char*)(str2); \
           char* s3 = (str3) == NULL ? (char*)"" : (char*)(str3); \
           char* s4 = (str4) == NULL ? (char*)"" : (char*)(str4); \
           char* s5 = (str5) == NULL ? (char*)"" : (char*)(str5); \
           char* s6 = (str6) == NULL ? (char*)"" : (char*)(str6); \
           char* s7 = (str7) == NULL ? (char*)"" : (char*)(str7); \
           char* __res__ = (char*)alloca(strlen(s1)+strlen(s2)+strlen(s3)+strlen(s4)+strlen(s5)+strlen(s6)+strlen(s7)+1); \
           strcpy(__res__, s1); \
           strcat(__res__, s2); \
           strcat(__res__, s3); \
           strcat(__res__, s4); \
           strcat(__res__, s5); \
           strcat(__res__, s6); \
           strcat(__res__, s7); \
           __res__; \
        })
/** @} */

/**
 *  \brief Converts an `int` value to a stack allocated string.
 *
 *  \param [in] num integer number
 *
 *  \return the converted string
 */
#define int2str(num) \
        ({ \
           char* __res__ = (char*)alloca(numDigits((int)num)+1); \
           sprintf(__res__, "%d", (int)num); \
           __res__; \
        })

/**
 *  \brief Converts an `int` value to a stack allocated string.
 *
 *  \details If necessary, fills the result string with left zeros.
 *
 *  \param [in] num integer number
 *  \param [in] len minimum length of result string
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>len > 0</code></DD>
 *  </DL>
 *
 *  \return the converted string
 */
#define int2nstr(num, len) \
        ({ \
           require (len > 0, concat_3str("invalid length value (", int2str(len), ")")); \
           int d = numDigits((int)num); \
           if (len > d) \
              d = len; \
           char* __res__ = (char*)alloca(d+1); \
           sprintf(__res__, "%0*d", d, (int)num); \
           __res__; \
        })

/**
 *  \brief Converts an `long` value to a stack allocated string.
 *
 *  \param [in] num long integer number
 *
 *  \return the converted string
 */
#define long2str(num) \
        ({ \
           char* __res__ = (char*)alloca(numDigits((long)num)+1); \
           sprintf(__res__, "%ld", (long)num); \
           __res__; \
        })

/**
 *  \brief Converts an `long` value to a stack allocated string.
 *
 *  \details If necessary, fills the result string with left zeros.
 *
 *  \param [in] num long integer number
 *  \param [in] len minimum length of result string
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>len > 0</code></DD>
 *  </DL>
 *
 *  \return the converted string
 */
#define long2nstr(num, len) \
        ({ \
           require (len > 0, concat_3str("invalid length value (", int2str(len), ")")); \
           int d = numDigits((int)num); \
           if (len > d) \
              d = len; \
           char* __res__ = (char*)alloca(d+1); \
           sprintf(__res__, "%0*ld", d, (long)num); \
           __res__; \
        })

/**
 *  \brief Converts an `int` percentage to a stack allocated string.
 *
 *  \param [in] percentage an integer number with a percentage value
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>percentage >= 0 && percentage <= 100</code></DD>
 *  </DL>
 *
 *  \return the converted string
 */
#define perc2str(percentage) \
        ({ \
           require (percentage >= 0 && percentage <= 100, concat_3str("invalid percentage value (", int2str(percentage), ")")); \
           char* __res__ = (char*)alloca(4+1); \
           sprintf(__res__, "%3d%%", (int)percentage); \
           __res__; \
        })

/**
 *  \brief Determines the length of all strings passed as a NULL terminated variable list of arguments (vargs).
 *
 *  \param [in] first the argument that precedes the vargs argument list.
 *
 *  \return the sum of the length of all strings (not counting terminator `'\0'`)
 */
#define length_vargs_string_list(first) \
        ({ \
           int __res__ = 0; \
           va_list ap; \
           va_start(ap, first); \
           char* t = first; \
           while (t != NULL) \
           { \
              __res__ += strlen(t); \
              t = va_arg(ap, char*); \
           } \
           va_end(ap); \
           __res__; \
        })

#if defined __cplusplus && defined EXCEPTION_POLICY
#define not_null(pnt) \
        ({ \
           if ((pnt) == NULL) \
              throw string_concat(NULL, 0, (char*)"Null pointer error", (char*)", pointer: \"", #pnt, (char*)"\", function: \"", __FUNCTION__, (char*)"\":", int2str(__LINE__), (char*)", file: \"", __FILE__, (char*)"\"\n", NULL); \
           pnt; \
        })
#else
/**
 *  \brief Checks if address is not `NULL`, before its application.
 *
 *  \details This macro is a non-defensive implementation of a null pointer verification.
 *           It implements two error handling policies:
 *      - EXIT_POLICY (default): describes the error in `stderr` (with the identification
 *         and the precise location of the failure), generates a segmentation fault
 *         (enabling a stack trace within a debugger like `gdb`), and exits program execution;
 *      - EXCEPTION_POLICY: throws a `char*` exception with the description of the failure.
 *
 *  \par <b>Example</b>
 *  @skipline\code
 *     not_null(pnt)->something();
 *  \endcode
 *
 *  \param [in] pnt memory address
 */
#define not_null(pnt) \
        ({ \
           if ((pnt) == NULL) \
           { \
                 fprintf (stderr, "Null pointer error, pointer: \"%s\", function: \"%s\":%d, file: \"%s\"\n", \
                          #pnt, __FUNCTION__, __LINE__ , __FILE__); \
                 *((int*)0) = 0; \
                 abort (); \
           } \
           pnt; \
        })
#endif

/**
 *  \brief A replacement for `malloc` function.
 *
 *  \details This function is a non-defensive implementation of `malloc` error verification.
 *           It implements two error handling policies:
 *      - EXIT_POLICY (default): describes the error in `stderr` (with the identification
 *         and the precise location of the failure), generates a segmentation fault
 *         (enabling a stack trace within a debugger like `gdb`), and exits program execution;
 *      - EXCEPTION_POLICY: throws a `char*` exception with the description of the failure.
 *
 *  \param [in] size number of bytes to be allocated
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>size >= 0</code></DD>
 *  </DL>
 *
 *  \return address of the allocated memory
 */
void* mem_alloc(int size);

/**
 *  \brief A replacement for `free` function.
 *
 *  \param [in] pnt memory address to be freed
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>pnt != NULL</code></DD>
 *  </DL>
 */
void mem_free(void* pnt);

/**
 *  \brief Replicates a string.
 *
 *  \details The memory is allocated in the heap (using mem_alloc()).
 *
 *  \param [in] str string to be replicated
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>str != NULL</code></DD>
 *  </DL>
 *
 *  \return pointer to the replicated string
 */
char* string_clone(char* str);

/**
 *  \brief Number of lines of a string.
 *
 *  \param [in] text string text to process
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>text != NULL</code></DD>
 *  </DL>
 *
 *  \return number of counted lines
 */
int string_num_lines(char* text);

/**
 *  \brief Maximum number of columns of a string (not counting character `'\\n'`).
 *
 *  \param [in] text string text to process
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>text != NULL</code></DD>
 *  </DL>
 *
 *  \return maximum number of counted columns
 */
int string_num_columns(char* text);

/**
 *  \brief Counts the number of occurrences of an UTF8 character in a text.
 *
 *  \param [in] text string text to process
 *  \param [in] ch string containing the sequence of bytes (one or more) of an UTF8 single character
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>text != NULL</code></DD><BR>
 *     <DD><code>ch != NULL && num_chars_utf8(ch) == 1</code></DD>
 *  </DL>
 *
 *  \return number of counted occurrences
 */
int string_count_char(char* text, char* ch);

/**
 *  \brief Tests if a string starts with a prefix.
 *
 *  \param [in] text string text to process
 *  \param [in] prefix string to test if is a prefix
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>text != NULL</code></DD><BR>
 *     <DD><code>prefix != NULL</code></DD>
 *  </DL>
 *
 *  \return true (`!=0`) if prefix starts text, false (`0`) otherwise
 */
int string_starts_with(char* text, char* prefix);

/**
 *  \brief Tests if a string ends with a suffix.
 *
 *  \param [in] text string text to process
 *  \param [in] suffix string to test if is a suffix
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>text != NULL</code></DD><BR>
 *     <DD><code>suffix != NULL</code></DD>
 *  </DL>
 *
 *  \return true (`!=0`) if suffix ends text, false (`0`) otherwise
 */
int string_ends_with(char* text, char* suffix);

/**
 *  \brief Concatenates a `NULL` terminated list of string arguments.
 *
 *  \details
 *  This function treats all vargs arguments as strings (`char*`),
 *  and requires that the list is terminated with a NULL argument.
 *
 *  It allocates memory in heap (using mem_alloc()) if `NULL`
 *  is passed in the `res` argument.
 *
 *  \param [in,out] res address of result string (if not `NULL`)
 *  \param [in] max_length `res` input argument maximum length (not counting terminator `'\0'`), only applies if `(res != NULL)`
 *  \param [in] text the first string to be used in concatenation
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>text != NULL</code></DD><BR>
 *     <DD><code>res == NULL || (max_length > 0 && length_vargs_string_list(text) <= max_length)</code></DD>
 *  </DL>
 *
 *  \return the concatenated string
 */
char* string_concat(char* res, int max_length, char* text, ...);

/**
 *  \brief Generates a random boolean value.
 *
 *  \details
 *  This function generates boolean values with defined probabilities
 *  for true (`!=0`) and false (`0`) values.
 *
 *  \param [in] trueProb probability (in interval `[0;100]`).
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>trueProb >= 0 && trueProb <= 100</code></DD>
 *  </DL>
 *
 *  \return the random boolean value
 */
int random_boolean(int trueProb);

/**
 *  \brief Generates a random integer value within a given interval.
 *
 *  \details
 *  This function generates integer values in the interval `[min;max]`with an uniform distribution for all values.
 *
 *  \param [in] min lower value of interval
 *  \param [in] max higher value of interval
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>max >= min</code></DD>
 *  </DL>
 *
 *  \return the random integer value
 */
int random_int(int min, int max);

/**
 *  \brief Returns a random string from a given string list.
 *
 *  \details
 *  This function stores the previous randomly selected string's (using the integer indexes of the string list)
 *  to disallow its repeated generation.
 *
 *  \param [in] list list of strings to be selected (`NULL` terminated)
 *  \param [in,out] used indexes of strings already selected
 *  \param [in] length number of elements of lists `list` (not counting `NULL` entry) and `used`
 * 
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>list != NULL</code></DD><BR>
 *     <DD><code>used != NULL</code></DD>
 *  </DL>
 *
 *  \return the random string
 */
char* random_string(char** list, int* used, int length);

/**
 *  \brief Clears the terminal.
 */
void clear_console();

/**
 *  \brief Moves the cursor to a position in terminal.
 *
 *  \param [in] line position in the terminal
 *  \param [in] column position in the terminal
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>line >= 0 && column >= 0</code></DD>
 *  </DL>
 */
void move_cursor(int line,int column);

/**
 *  \brief Hides the terminal cursor.
 */
void hide_cursor();

/**
 *  \brief Shows the terminal cursor.
 */
void show_cursor();

/**
 *  \brief Number of elements of a `NULL` terminated list of strings.
 *
 *  \param [in] list `NULL` terminated array of strings
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>list != NULL</code></DD>
 *  </DL>
 *
 *  \return number of elements of list (not counting `NULL`)
 */
int string_list_length(char** list);

/**
 *  \brief Replicates a `NULL` terminated list of strings.
 *
 *  \details The memory is allocated in the heap (using mem_alloc()).
 *
 *  \param [in] list `NULL` terminated array of strings
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>list != NULL</code></DD>
 *  </DL>
 *
 *  \return pointer to the replicated list
 */
char** string_list_clone(char** list);

/**
 *  \brief Frees the memory allocated to a `NULL` terminated list of strings.
 *
 *  \details This function is totally compatible with string_list_clone(), and always returns `NULL`.
 *
 *  \param [in] list `NULL` terminated array of strings
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>list != NULL</code></DD>
 *  </DL>
 *
 *  \return `NULL`
 */
char** string_list_free(char** list);

int numDigits(int num);

/**
 *  \brief Converts an `int` value to a string.
 *
 *  \details If necessary, fills the result string with left zeros.
 *  It allocates memory in heap (using mem_alloc()) if `NULL`
 *  is passed in the `res` argument.
 *
 *  \param [in,out] res address of result string (if not `NULL`)
 *  \param [in] num integer number
 *  \param [in] len minimum length of result string (not counting terminator `'\0'`)
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>len >= numDigits(num)</code></DD>
 *  </DL>
 *
 *  \return the converted string
 */
char* int2nstring(char* res, int num, int len);

/**
 *  \brief Converts an `int` percentage to a string.
 *
 *  \details It allocates memory in heap (using mem_alloc()) if `NULL`
 *  is passed in the `res` argument.
 *
 *  \param [in,out] res address of result string (if not `NULL`)
 *  \param [in] percentage an integer number with a percentage value
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>percentage >= 0 && percentage <= 100</code></DD>
 *  </DL>
 *
 *  \return the converted string (if not `NULL`, it returns `res`)
 */
char* percentage2string(char* res, int percentage);

#endif

/* ************************************************** */
/**
 * @} close group utils
 **/
/* ************************************************** */

