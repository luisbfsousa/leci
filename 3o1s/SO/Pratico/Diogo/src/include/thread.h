/**
 * \defgroup thread thread 
 * \ingroup concurrency-library
 * \brief POSIX threads library wrapper module.
 *
 * \details This module removes defensive programming approach of native POSIX threads library.
 *
 * All implemented functions, have exactly the same arguments and/or result of the original function,
 * with the exception of returning an error indication.
 *
 * Errors are handled by the implementation of two policies:
 *      -# EXIT_POLICY (default): describes the failed call in `stderr` (with the identification
 *         of the errno error, and the precise location the call), generates a segmentation fault
 *         (enabling a stack trace within a debugger like `gdb`), and exits program execution;
 *      -# EXCEPTION_POLICY: throws a `int` exception with the (errno) status error returned by the original function.
 * 
 * \author Miguel Oliveira e Silva, 2017-2018
 *
 *  @{ 
 **/
/*!
 * \file
 *
 * \brief POSIX threads library wrapper module.
 * \remarks Removes defensive programming from native libraries
 **/

#ifndef THREAD_H
#define THREAD_H

#include <pthread.h>

//#define EXCEPTION_POLICY
//#define EXIT_POLICY // DEFAULT

/** @name Thread handling
 *
 *  @details
 *
 *  Variable type: `pthread_t`
 *
 *  @anchor thread @{
 */

/**
 *  \brief `pthread_equal` wrapper function.
 *
 *  \details Other documentation in @verbatim man 3 pthread_equal @endverbatim
 *
 *  @see https://man.cx/pthread_equal(3)
 */
int thread_equal(pthread_t t1, pthread_t t2);

/**
 *  \brief `pthread_create` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>t != NULL</code></DD><BR>
 *     <DD><code>thread_main != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_create @endverbatim
 *
 *  @see https://man.cx/pthread_create(3)
 */
void thread_create(pthread_t* t, pthread_attr_t* attr, void *(*thread_main)(void*), void* arg);

/**
 *  \brief `pthread_self` wrapper function.
 *  
 *  \details Other documentation in @verbatim man 3 pthread_self @endverbatim
 *
 *  @see https://man.cx/pthread_self(3)
 */
pthread_t thread_self();

/**
 *  \brief `sched_yield` wrapper function.
 *  
 *  \details Other documentation in @verbatim man 3 sched_yield @endverbatim
 *
 *  @see https://man.cx/sched_yield(3)
 */
void thread_sched_yield(void);

/**
 *  \brief `pthread_exit` wrapper function.
 *  
 *  \details Other documentation in @verbatim man 3 pthread_exit @endverbatim
 *
 *  @see https://man.cx/pthread_exit(3)
 */
void thread_exit(void *retval);

/**
 *  \brief `pthread_detach` wrapper function.
 *  
 *  \details Other documentation in @verbatim man 3 pthread_detach @endverbatim
 *
 *  @see https://man.cx/pthread_detach(3)
 */
void thread_detach(pthread_t thread);

/**
 *  \brief `pthread_join` wrapper function.
 *  
 *  \details Other documentation in @verbatim man 3 pthread_join @endverbatim
 *
 *  @see https://man.cx/pthread_join(3)
 */
void thread_join(pthread_t t, void** result);

/** @} */


/** @name Mutexes
 *
 *  @details
 *
 *  Variable type: `pthread_mutex_t`
 *
 *  Initialization of mutexes can be static or dynamic.
 *
 *  In static initialization the following initialization macros are suggested:
 *  - `PTHREAD_MUTEX_INITIALIZER` - standard initializer
 *  - `PTHREAD_ERRORCHECK_MUTEX_INITIALIZER_NP` - initializer that ensures error checking
 *  - `PTHREAD_RECURSIVE_MUTEX_INITIALIZER_NP` - for recursive mutexes (note that recursive mutexes should be avoid)
 *
 *  Dynamic initialization is done by mutex_init() and mutex_destroy().
 *
 *  @anchor mutex @{
 */

/**
 *  \brief `pthread_mutex_init` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>pmtx != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_mutex_init @endverbatim
 *
 *  @see https://man.cx/pthread_mutex_init(3)
 */
void mutex_init(pthread_mutex_t* pmtx, pthread_mutexattr_t* attr);

/**
 *  \brief `pthread_mutex_destroy` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>pmtx != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_mutex_destroy @endverbatim
 *
 *  @see https://man.cx/pthread_mutex_destroy(3)
 */
void mutex_destroy(pthread_mutex_t* pmtx);

/**
 *  \brief `pthread_mutex_lock` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>pmtx != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_mutex_lock @endverbatim
 *
 *  @see https://man.cx/pthread_mutex_lock(3)
 */
void mutex_lock(pthread_mutex_t* pmtx);

/**
 *  \brief `pthread_mutex_trylock` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>pmtx != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_mutex_trylock @endverbatim
 *
 *  @see https://man.cx/pthread_mutex_trylock(3)
 *
 *  \return true (`!=0`) if lock succeeds, false (`0`) otherwise
 */
int mutex_trylock(pthread_mutex_t* pmtx);

/**
 *  \brief `pthread_mutex_unlock` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>pmtx != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_mutex_unlock @endverbatim
 *
 *  @see https://man.cx/pthread_mutex_unlock(3)
 */
void mutex_unlock(pthread_mutex_t* pmtx);

/** @} */


/** @name Condition variables
 *
 *  @details
 *
 *  Variable type: `pthread_cond_t`
 *
 *  Initialization of condition variables can be static or dynamic.
 *
 *  In static initialization the following initialization macros should be used:
 *  - `PTHREAD_COND_INITIALIZER` - standard initializer
 *
 *  Dynamic initialization is done by cond_init() and cond_destroy().
 *
 *  @anchor cvar @{
 */

/**
 *  \brief `pthread_cond_init` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>pcvar != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_cond_init @endverbatim
 *
 *  @see https://man.cx/pthread_cond_init(3)
 */
void cond_init(pthread_cond_t* pcvar, pthread_condattr_t* attr);

/**
 *  \brief `pthread_cond_destroy` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>pcvar != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_cond_destroy @endverbatim
 *
 *  @see https://man.cx/pthread_cond_destroy(3)
 */
void cond_destroy(pthread_cond_t* pcvar);

/**
 *  \brief `pthread_cond_wait` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>pcvar != NULL</code></DD><BR>
 *     <DD><code>pmtx != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_cond_wait @endverbatim
 *
 *  @see https://man.cx/pthread_cond_wait(3)
 */
void cond_wait(pthread_cond_t* pcvar, pthread_mutex_t* pmtx);

/**
 *  \brief `pthread_cond_timedwait` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>pcvar != NULL</code></DD><BR>
 *     <DD><code>pmtx != NULL</code></DD><BR>
 *     <DD><code>abstime != NULL</code></DD>
 *  </DL>
 *
 *  \return true (`!=0`) if condition variable was signaled, false (`0`) it time out has expired.
 *
 *  \details Other documentation in @verbatim man 3 pthread_cond_timedwait @endverbatim
 *
 *  @see https://man.cx/pthread_cond_wait(3)
 */
int cond_timedwait(pthread_cond_t* pcvar, pthread_mutex_t* pmtx, const struct timespec *abstime);

/**
 *  \brief `pthread_cond_timedwait` wrapper function accepting relative time (in microseconds) instead of absolute time.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>pcvar != NULL</code></DD><BR>
 *     <DD><code>pmtx != NULL</code></DD><BR>
 *     <DD><code>relative_time_us > 0L</code></DD>
 *  </DL>
 *
 *  \return true (`!=0`) if condition variable was signaled, false (`0`) it time out has expired.
 *
 *  \details Documentation in @verbatim man 3 pthread_cond_timedwait @endverbatim
 *
 *  @see https://man.cx/pthread_cond_wait(3)
 */
int cond_timedwait(pthread_cond_t* pcvar, pthread_mutex_t* pmtx, long relative_time_us);

/**
 *  \brief `pthread_cond_signal` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>pcvar != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_cond_signal @endverbatim
 *
 *  @see https://man.cx/pthread_cond_signal(3)
 */
void cond_signal(pthread_cond_t* pcvar);

/**
 *  \brief `pthread_cond_broadcast` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>pcvar != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_cond_broadcast @endverbatim
 *
 *  @see https://man.cx/pthread_cond_broadcast(3)
 */
void cond_broadcast(pthread_cond_t* pcvar);

/** @} */


/** @name One-time initialization
 *
 *  @details
 *
 *  Variable type: `pthread_once_t`
 *
 *  POSIX thread library support a mechanism that ensures a one-time execution of a function.
 *  It does it through `pthread_once_t` variables, and by passing a callback function
 *  (in C/C++ is simply a function pointer).
 *
 *  \par <b>Example</b>
 *  @verbatim
       void once_init_routine(void) { ... }
       ...
       pthread_once_t once_control = PTHREAD_ONCE_INIT;
       thread_once(&once_control, &once_init_routine); // one time execution over pthread_once_t
                                                       // variable is guaranteed, regardless of the
                                                       // number of threads that execute over that
                                                       // variable.
    @endverbatim
 *
 *  @anchor thread_once @{
 */

/**
 *  \brief `pthread_once` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>once_control != NULL</code></DD><BR>
 *     <DD><code>init_routine != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_once @endverbatim
 *
 *  @see https://man.cx/pthread_once(3)
 */
void thread_once(pthread_once_t *once_control, void (*init_routine) (void));

/** @} */


/** @name Thread-specific data
 *
 *  @details
 *
 *  Variable type: `pthread_key_t`
 *
 *  Thread-specific data allows the definition of variable whose scope is limited to each thread.
 *  In practice, we will have a common variable, with a common access, but with different values for each thread.
 *
 *  @anchor thread_specific @{
 */

/**
 *  \brief `pthread_key_create` wrapper function.
 *  
 *  \details This function should be executed once for each key (use thread_once()).
 *
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>key != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_key_create @endverbatim
 *
 *  @see https://man.cx/pthread_key_create(3)
 */
void thread_key_create(pthread_key_t *key, void (*destr_function) (void *));

/**
 *  \brief `pthread_key_delete` wrapper function.
 *  
 *  \details This function should be executed once for each key (use thread_once()).
 *
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>key != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_key_delete @endverbatim
 *
 *  @see https://man.cx/pthread_key_delete(3)
 */
void thread_key_delete(pthread_key_t key);

/**
 *  \brief `pthread_setspecific` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>pointer != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_setspecific @endverbatim
 *
 *  @see https://man.cx/pthread_setspecific(3)
 */
void thread_setspecific(pthread_key_t key, void* pointer);

/**
 *  \brief `pthread_getspecific` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>key != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_getspecific @endverbatim
 *
 *  @see https://man.cx/pthread_getspecific(3)
 */
void* thread_getspecific(pthread_key_t key);

/** @} */


/** @name Mutex attributes
 *
 *  @details
 *
 *  Variable type: `pthread_mutexattr_t`
 *
 *  @anchor mutex_attr @{
 */

/**
 *  \brief `pthread_mutexattr_init` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>attr != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_mutexattr_init @endverbatim
 *
 *  @see https://man.cx/pthread_mutexattr_init(3)
 */
void mutexattr_init(pthread_mutexattr_t *attr);

/**
 *  \brief `pthread_mutexattr_destroy` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>attr != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_mutexattr_destroy @endverbatim
 *
 *  @see https://man.cx/pthread_mutexattr_destroy(3)
 */
void mutexattr_destroy(pthread_mutexattr_t *attr);

/**
 *  \brief `pthread_mutexattr_settype` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>attr != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_mutexattr_settype @endverbatim
 *
 *  @see https://man.cx/pthread_mutexattr_settype(3)
 */
void mutexattr_settype(pthread_mutexattr_t *attr, int type);

/**
 *  \brief `pthread_mutexattr_gettype` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>attr != NULL</code></DD><BR>
 *     <DD><code>kind != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_mutexattr_gettype @endverbatim
 *
 *  @see https://man.cx/pthread_mutexattr_gettype(3)
 */
void mutexattr_gettype(const pthread_mutexattr_t *attr, int *kind);

/** @} */


/** @name Condition variables attributes
 *
 *  @details
 *
 *  Variable type: `pthread_condattr_t`
 *
 *  @anchor cond_attr @{
 */

/**
 *  \brief `pthread_condattr_init` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>attr != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_condattr_init @endverbatim
 *
 *  @see https://man.cx/pthread_condattr_init(3)
 */
void condattr_init(pthread_condattr_t *attr);

/**
 *  \brief `pthread_condattr_destroy` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>attr != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_condattr_destroy @endverbatim
 *
 *  @see https://man.cx/pthread_condattr_destroy(3)
 */
void condattr_destroy(pthread_condattr_t *attr);

/** @} */


/** @name Thread attributes
 *
 *  @details
 *
 *  Variable type: `pthread_attr_t`
 *
 *  @anchor thread_attr @{
 */

/**
 *  \brief `pthread_attr_init` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>attr != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_attr_init @endverbatim
 *
 *  @see https://man.cx/pthread_attr_init(3)
 */
void thread_attr_init(pthread_attr_t *attr);

/**
 *  \brief `pthread_attr_destroy` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>attr != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_attr_destroy @endverbatim
 *
 *  @see https://man.cx/pthread_attr_destroy(3)
 */
void thread_attr_destroy(pthread_attr_t *attr);

/**
 *  \brief `pthread_attr_setdetachstate` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>attr != NULL</code></DD><BR>
 *     <DD><code>detachstate == PTHREAD_CREATE_DETACHED || detachstate == PTHREAD_CREATE_JOINABLE</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_attr_setdetachstate @endverbatim
 *
 *  @see https://man.cx/pthread_attr_setdetachstate(3)
 */
void thread_attr_setdetachstate(pthread_attr_t *attr, int detachstate);

/**
 *  \brief `pthread_attr_getdetachstate` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>attr != NULL</code></DD><BR>
 *     <DD><code>pdetachstate != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_attr_getdetachstate @endverbatim
 *
 *  @see https://man.cx/pthread_attr_getdetachstate(3)
 */
void thread_attr_getdetachstate(const pthread_attr_t *attr, int *pdetachstate);

/** @} */


/** @name Cancellation
 *
 *  @anchor thread_cancellation @{
 */

/**
 *  \brief `pthread_cancel` wrapper function.
 *  
 *  \details Other documentation in @verbatim man 3 pthread_cancel @endverbatim
 *
 *  @see https://man.cx/pthread_cancel(3)
 */
void thread_cancel(pthread_t thread);

/**
 *  \brief `pthread_setcancelstate` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>state == PTHREAD_CANCEL_ENABLE || state == PTHREAD_CANCEL_DISABLE</code></DD><BR>
 *     <DD><code>oldstate != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_setcancelstate @endverbatim
 *
 *  @see https://man.cx/pthread_setcancelstate(3)
 */
void thread_setcancelstate(int state, int *oldstate);

/**
 *  \brief `pthread_setcanceltype` wrapper function.
 *  
 *  <DL><DT><B>Precondition:</B></DT>
 *     <DD><code>type == PTHREAD_CANCEL_DEFERRED || type == PTHREAD_CANCEL_ASYNCHRONOUS</code></DD><BR>
 *     <DD><code>oldtype != NULL</code></DD>
 *  </DL>
 *
 *  \details Other documentation in @verbatim man 3 pthread_setcanceltype @endverbatim
 *
 *  @see https://man.cx/pthread_setcanceltype(3)
 */
void thread_setcanceltype(int type, int *oldtype);

/**
 *  \brief `pthread_testcancel` wrapper function.
 *  
 *  \details Other documentation in @verbatim man 3 pthread_testcancel @endverbatim
 *
 *  @see https://man.cx/pthread_testcancel(3)
 */
void thread_testcancel(void);


/** @} */

#endif

/* ************************************************** */
/**
 * @} close group thread
 **/
/* ************************************************** */

