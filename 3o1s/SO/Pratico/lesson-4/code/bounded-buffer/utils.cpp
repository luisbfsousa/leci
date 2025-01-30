#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include "dbc.h"
#include "utils.h"

//#define EXCEPTION_POLICY
//#define EXIT_POLICY // DEFAULT

#if defined __cplusplus && defined EXCEPTION_POLICY
#define check_alloc(pnt) \
   if ((pnt) == NULL) \
      throw ENOMEM
#else
#define check_alloc(pnt) \
   if ((pnt) == NULL) \
      do { \
         fprintf (stderr, "%s, pointer: \"%s\", function: \"%s\":%d, file: \"%s\"\n", \
                  strerror (ENOMEM), #pnt, __FUNCTION__, __LINE__ , __FILE__); \
         *((int*)0) = 0; \
         abort (); \
      } while (0)
#endif

void* mem_alloc(int size)
{
   require (size >= 0, concat_3str("invalid argument (", int2str(size), ")"));

   void* res = malloc(size);
   check_alloc(res);
   return res;
}

void mem_free(void* pnt)
{
   require (pnt != NULL, "argument required");

   free(pnt);
}

char* string_clone(char* str)
{
   require (str != NULL, "string argument required");

   char* res = (char*)mem_alloc(strlen(str)+1);
   strcpy(res, str);

   return res;
}

int string_num_lines(char* text)
{
   require (text != NULL, "string argument required");

   int res = 0;
   int i;
   for(i = 0;text[i] != '\0'; i++)
      if (text[i] == '\n')
         res++;
   if (i > 0 && text[i-1] != '\n')
      res++;
   return res;
}

// not counting '\n'
int string_num_columns(char* text)
{
   require (text != NULL, "string argument required");

   int res = 0;
   int c = 0;
   for(int i = 0;text[i] != '\0'; i++)
   {
      if (text[i] == '\n')
      {
         if (c > res)
            res = c;
         c = 0;
      }
      else
         c++;
   }
   if (c > res)
      res = c;
   return res;
}

int string_count_char(char* text, char* ch)
{
   require (text != NULL, "string argument required");

   int res = 0;
   int l = strlen(ch);
   int i = 0;
   while(text[i] != '\0')
   {
      if (string_starts_with(text+i, ch))
      {
         res++;
         i+=l;
      }
      else
         i++;
   }
   return res;
}


int string_starts_with(char* text, char* prefix)
{
   require (text != NULL, "string argument required");
   require (prefix != NULL, "string argument required");

   return strncmp(text, prefix, strlen(prefix)) == 0;
}

int string_ends_with(char* text, char* suffix)
{
   require (text != NULL, "string argument required");
   require (suffix != NULL, "string argument required");

   return strlen(text) >= strlen(suffix) && (strcmp(text+strlen(text)-strlen(suffix), suffix) == 0);
}

// search count occurrence of substring inside text
// returns -1 if not found.
// NOTE: not tested yet!
int string_find(char* text, char* substring, int count)
{
   require (text != NULL, "string argument required");
   require (substring != NULL && strlen(substring) > 0, substring == NULL ? "string argument required" : "empty substring");
   require (count > 0, concat_3str("invalid number of occurrences (", int2str(count), ")"));

   int res = -1;
   char* t = text;
   for(int i = 0; (t != NULL) && (i < count); i++)
   {
      t = strstr(t, (const char*)substring);
      if (t != NULL)
         t++;
   }
   if (t != NULL)
   {
      t--;
      res = (int)(t - text);
   }

   return res;
}


// max_length without '\0'
char* string_concat(char* res, int max_length, char* text, ...)
{
   require (text != NULL, "text argument required");
   require (res == NULL || (max_length > 0 && length_vargs_string_list(text) <= max_length), concat_5str("text arguments length (",int2str(length_vargs_string_list(text)), ") exceeds maximum length of result argument (", int2str(max_length), ")"));

   if (res == NULL)
   {
      max_length = length_vargs_string_list(text);
      res = (char*)mem_alloc(max_length+1);
   }

   int len = 0;
   va_list ap;
   va_start(ap, text);
   char* t = text;
   while (t != NULL)
   {
      strcpy(res+len, t);
      len += strlen(t);
      t = va_arg(ap, char*);
   }
   va_end(ap);
   res[len] = '\0';

   ensure (strlen(res) <= (size_t)max_length, "");

   return res;
}

int random_boolean(int trueProb)
{
   require (trueProb >= 0 && trueProb <= 100, concat_3str("invalid percentage (", int2str(trueProb), ")"));

   double r = (double)rand()/(double)RAND_MAX; // [0;RAND_MAX]

   return r < (double)trueProb/100.0;
}

int random_int(int min, int max)
{
   require (max >= min, concat_5str("invalid interval [", int2str(min), ",", int2str(max), "]"));

   double r = (double)rand()/(double)RAND_MAX; // [0;1]

   return min + (int)(r*(max-min)+0.5);
}

char* random_string(char** list, int* used, int length)
{
   require (list != NULL, "array of strings argument required");
   require (used != NULL, "list of used list index values required");

   char* res = NULL;
   do
   {
      int idx = random_int(0, length-1);
      if (!used[idx])
      {
         res = list[idx];
         used[idx] = 1;
      }
   }
   while(res == NULL);

   return res;
}

void clear_console()
{
   printf("\u001B[2J");
   fflush(stdout);
}

void move_cursor(int line,int column)
{
   require (line >= 0 && column >= 0, concat_4str("invalid cursor position, line:", int2str(line), ", column:", int2str(column)));

   printf("\u001B[%d;%df", 1+line, 1+column);
   fflush(stdout);
}

void hide_cursor()
{
   printf("\e[?25l");
   fflush(stdout);
}

void show_cursor()
{
   printf("\e[?25h");
   fflush(stdout);
}

int string_list_length(char** list)
{
   require (list != NULL, "array of strings argument required");

   int res;
   for(res = 0; list[res] != NULL; res++)
      ;
   return res;
}

char** string_list_clone(char** list)
{
   require (list != NULL, "array of strings argument required");

   char** res = (char**)mem_alloc((string_list_length(list)+1)*sizeof(char*));
   int i;
   for(i = 0; list[i] != NULL; i++)
      res[i] = string_clone(list[i]);
   res[i] = NULL;

   return res;
}

char** string_list_free(char** list)
{
   require (list != NULL, "array of strings argument required");

   for(int i = 0; list[i] != NULL; i++)
      mem_free(list[i]);
   mem_free(list);

   return NULL;
}

int numDigits(int num)
{
   int res = 1;
   int n = abs(num)/10;
   while(n != 0)
   {
      res++;
      n /= 10;
   }
   return res;
}

char* int2nstring(char* res, int num, int len)
{
   require (len >= numDigits(num), concat_7str("length argument (", int2str(len), ") lower than number (", int2str(num), ") # of digits (", int2str(numDigits(num)), ")"));

   int d = numDigits(num);
   if (len > d)
      d = len;
   if (res == NULL)
      res = (char*)mem_alloc(d+1);
   sprintf(res, "%0*d", d, num);
   return res;
}

char* percentage2string(char* res, int percentage)
{
   require (percentage >= 0 && percentage <= 100, concat_3str("invalid percentage (", int2str(percentage), ")"));

   if (res == NULL)
      res = (char*)mem_alloc(5);

   sprintf(res, "%3d%%", percentage);

   return res;
}

