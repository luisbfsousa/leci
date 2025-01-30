#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <time.h>
#include <sys/time.h>
#include <pthread.h>
#include "dbc.h"
#include "thread.h"

#if defined __cplusplus && defined EXCEPTION_POLICY
#define check_error(status) \
   if (status != 0) \
      throw status
#else
#define check_error(status) \
   if (status != 0) \
      do { \
         fprintf (stderr, "%s at \"%s\":%d: %s\n", \
                  __FUNCTION__ , __FILE__, __LINE__, strerror (status)); \
         *((int*)0) = 0; \
         abort (); \
      } while (0)
#endif

int thread_equal(pthread_t t1, pthread_t t2)
{
   return pthread_equal(t1, t2);
}

void thread_create(pthread_t* t, pthread_attr_t* attr, void *(*thread_main)(void*), void* arg)
{
   require (t != NULL, "pthread_t target variable required");
   require (thread_main != NULL, "thread main function required");

   int status = pthread_create(t, attr, thread_main, arg);
   check_error(status);
}

pthread_t thread_self()
{
   return pthread_self();
}

void thread_sched_yield(void)
{
   int status = sched_yield();
   check_error(status);
}

void thread_exit(void *retval)
{
   pthread_exit(retval);
}

void thread_detach(pthread_t thread)
{
   int status = pthread_detach(thread);
   check_error(status);
}

void thread_join(pthread_t t, void** result)
{
   int status = pthread_join(t, result);
   check_error(status);
}


void mutex_init(pthread_mutex_t* pmtx, pthread_mutexattr_t* attr)
{
   require (pmtx != NULL, "pthread_mutex_t target variable required");

   int status = pthread_mutex_init(pmtx, attr);
   check_error(status);
}

void mutex_destroy(pthread_mutex_t* pmtx)
{
   require (pmtx != NULL, "pthread_mutex_t target variable required");

   int status = pthread_mutex_destroy(pmtx);
   check_error(status);
}

void mutex_lock(pthread_mutex_t* pmtx)
{
   require (pmtx != NULL, "pthread_mutex_t target variable required");

   int status = pthread_mutex_lock(pmtx);
   check_error(status);
}

// returns 0 on lock failure
int mutex_trylock(pthread_mutex_t* pmtx)
{
   require (pmtx != NULL, "pthread_mutex_t target variable required");

   int status = pthread_mutex_trylock(pmtx);
   if (status != 0 && status != EBUSY)
      check_error(status);

   return status != EBUSY;
}

void mutex_unlock(pthread_mutex_t* pmtx)
{
   require (pmtx != NULL, "pthread_mutex_t target variable required");

   int status = pthread_mutex_unlock(pmtx);
   check_error(status);
}

void cond_init(pthread_cond_t* pcvar, pthread_condattr_t* attr)
{
   require (pcvar != NULL, "pthread_cond_t target variable required");

   int status = pthread_cond_init(pcvar, attr);
   check_error(status);
}

void cond_destroy(pthread_cond_t* pcvar)
{
   require (pcvar != NULL, "pthread_cond_t target variable required");

   int status = pthread_cond_destroy(pcvar);
   check_error(status);
}

void cond_wait(pthread_cond_t* pcvar, pthread_mutex_t* pmtx)
{
   require (pcvar != NULL, "pthread_cond_t target variable required");
   require (pmtx != NULL, "pthread_mutex_t target variable required");

   int status = pthread_cond_wait(pcvar, pmtx);
   check_error(status);
}

void cond_wait_cancelable(pthread_cond_t* pcvar, pthread_mutex_t* pmtx)
{
   require (pcvar != NULL, "pthread_cond_t target variable required");
   require (pmtx != NULL, "pthread_mutex_t target variable required");

   pthread_cleanup_push((void (*)(void*))&mutex_unlock, (void*)pmtx);
   cond_wait(pcvar, pmtx);
   pthread_cleanup_pop(0);
}

int cond_timedwait(pthread_cond_t* pcvar, pthread_mutex_t* pmtx, const struct timespec *abstime)
{
   require (pcvar != NULL, "pthread_cond_t target variable required");
   require (pmtx != NULL, "pthread_mutex_t target variable required");
   require (abstime != NULL, "absolute time value required");

   int res = 1;
   int status = pthread_cond_timedwait(pcvar, pmtx, abstime);
   if (status == ETIMEDOUT)
      res = 0;
   else
      check_error(status);

   return res;
}

int cond_timedwait(pthread_cond_t* pcvar, pthread_mutex_t* pmtx, long relative_time_us)
{
   require (pcvar != NULL, "pthread_cond_t target variable required");
   require (pmtx != NULL, "pthread_mutex_t target variable required");
   require (relative_time_us > 0L, concat_3str("invalid relative time (", long2str(relative_time_us), ")"));

   int res = 1;

//   struct timespec // from time.h
//   {
//      __time_t tv_sec;    /* Seconds.  */
//      __syscall_slong_t tv_nsec;   /* Nanoseconds.  */
//   };

   struct timeval now;
   int status = gettimeofday(&now, NULL);
   check (status == 0, ""); // should never fail!
   struct timespec abstime;
   abstime.tv_sec = now.tv_sec + (time_t)(relative_time_us/1000000L);
   abstime.tv_nsec = (now.tv_usec + (time_t)(relative_time_us%1000000L)) * 1000;
   status = pthread_cond_timedwait(pcvar, pmtx, &abstime);
   if (status == ETIMEDOUT)
      res = 0;
   else
      check_error(status);

   return res;
}

void cond_signal(pthread_cond_t* pcvar)
{
   require (pcvar != NULL, "pthread_cond_t target variable required");

   int status = pthread_cond_signal(pcvar);
   check_error(status);
}

void cond_broadcast(pthread_cond_t* pcvar)
{
   require (pcvar != NULL, "pthread_cond_t target variable required");

   int status = pthread_cond_broadcast(pcvar);
   check_error(status);
}

void thread_once(pthread_once_t *once_control, void (*init_routine) (void))
{
   require (once_control != NULL, "pthread_once_t target variable required");
   require (init_routine != NULL, "callback routine required");

   int status = pthread_once(once_control, init_routine);
   check_error(status);
}


void thread_key_create(pthread_key_t *key, void (*destr_function) (void *)) // once execution (in main or using pthread_once)
{
   require (key != NULL, "pthread_key_t target variable required");

   int status = pthread_key_create(key, destr_function);
   check_error(status);
}

void thread_key_delete(pthread_key_t key) // once execution (in main or using pthread_once)
{
   int status = pthread_key_delete(key);
   check_error(status);
}

void thread_setspecific(pthread_key_t key, void* pointer)
{
   require (pointer != NULL, "pointer required for thread local variable");

   int status = pthread_setspecific(key, pointer);
   check_error(status);
}

void* thread_getspecific(pthread_key_t key)
{
   void* res = pthread_getspecific(key);
   require (res != NULL, "invalid key");
   return res;
}

void mutexattr_init(pthread_mutexattr_t *attr)
{
   require (attr != NULL, "pthread_mutexattr_t target variable required");

   int status = pthread_mutexattr_init(attr);
   check_error(status);
}

void mutexattr_destroy(pthread_mutexattr_t *attr)
{
   require (attr != NULL, "pthread_mutexattr_t target variable required");

   int status = pthread_mutexattr_destroy(attr);
   check_error(status);
}

// type: PTHREAD_MUTEX_NORMAL PTHREAD_MUTEX_ERRORCHECK PTHREAD_MUTEX_RECURSIVE PTHREAD_MUTEX_DEFAULT
void mutexattr_settype(pthread_mutexattr_t *attr, int type)
{
   require (attr != NULL, "pthread_mutexattr_t target variable required");

   int status = pthread_mutexattr_settype(attr, type);
   check_error(status);
}

void mutexattr_gettype(const pthread_mutexattr_t *attr, int *kind)
{
   require (attr != NULL, "pthread_mutexattr_t target variable required");
   require (kind != NULL, "target kind variable required");

   int status = pthread_mutexattr_gettype(attr, kind);
   check_error(status);
}


void condattr_init(pthread_condattr_t *attr)
{
   require (attr != NULL, "pthread_condattr_t target variable required");

   int status = pthread_condattr_init(attr);
   check_error(status);
}

void condattr_destroy(pthread_condattr_t *attr)
{
   require (attr != NULL, "pthread_condattr_t target variable required");

   int status = pthread_condattr_destroy(attr);
   check_error(status);
}

void thread_attr_init(pthread_attr_t *attr)
{
   require (attr != NULL, "pthread_attr_t target variable required");

   int status = pthread_attr_init(attr);
   check_error(status);
}

void thread_attr_destroy(pthread_attr_t *attr)
{
   require (attr != NULL, "pthread_attr_t target variable required");

   int status = pthread_attr_destroy(attr);
   check_error(status);
}

void thread_attr_setdetachstate(pthread_attr_t *attr, int detachstate)
{
   require (attr != NULL, "pthread_attr_t target variable required");
   require (detachstate == PTHREAD_CREATE_DETACHED || detachstate == PTHREAD_CREATE_JOINABLE, "invalid detach state value");

   int status = pthread_attr_setdetachstate(attr, detachstate);
   check_error(status);
}

void thread_attr_getdetachstate(const pthread_attr_t *attr, int *pdetachstate)
{
   require (attr != NULL, "pthread_attr_t target variable required");
   require (pdetachstate != NULL, "detach state output variable required");

   int status = pthread_attr_getdetachstate(attr, pdetachstate);
   check_error(status);
}


void thread_cancel(pthread_t thread)
{
   int status = pthread_cancel(thread);
   check_error(status);
}

void thread_setcancelstate(int state, int *oldstate)
{
   require (state == PTHREAD_CANCEL_ENABLE || state == PTHREAD_CANCEL_DISABLE, "invalid cancel state value");
   require (oldstate != NULL, "output oldstate variable required");

   int status = pthread_setcancelstate(state, oldstate);
   check_error(status);
}

void thread_setcanceltype(int type, int *oldtype)
{
   require (type == PTHREAD_CANCEL_DEFERRED || type == PTHREAD_CANCEL_ASYNCHRONOUS, "invalid cancel type value");
   require (oldtype != NULL, "output oldtype variable required");

   int status = pthread_setcanceltype(type, oldtype);
   check_error(status);
}

void thread_testcancel(void)
{
   pthread_testcancel();
}

#ifdef NOT_INCLUDED_IN_ACTIVE_CODE
/**
 *  \brief `pthread_cleanup_push` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>routine != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_cleanup_push @endverbatim
 *
 *  @see https://man.cx/pthread_cleanup_push(3)
 */
void thread_cleanup_push(void (*routine)(void *), void *arg);

/**
 *  \brief `pthread_cleanup_pop` wrapper function.
 *  
 *  \details Other documentation in @verbatim man 3 pthread_cleanup_pop @endverbatim
 *
 *  @see https://man.cx/pthread_cleanup_pop(3)
 */
void thread_cleanup_pop(int execute);

void thread_cleanup_push(void (*routine)(void *), void *arg)
{
   require (routine != NULL, "callback routine argument required");

   pthread_cleanup_push(routine, arg);
}

void thread_cleanup_pop(int execute)
{
   pthread_cleanup_pop(execute);
}

//int randomValue(int min, int max)
//{
//   require (min >= 0 && max >= 0, concat_5str("invalid interval [", int2str(min), ",", int2str(max), "]"));
//
//   unsigned int* pseed = (unsigned int*)getspecific(&rand_seed_key);
//   assert(pseed != NULL);
//   return min + (int)((double)(max-min)*(double)rand_r(pseed)/(double)RAND_MAX);
//}
//
//void randomPause(int min, int max) // msec
//{
//   usleep(randomValue(min, max)*1000);
//}
#endif
