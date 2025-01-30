#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/msg.h>
#include <sys/shm.h>
#include <sys/sem.h>
#include <sys/msg.h>
#include <stdarg.h>
#include "dbc.h"
#include "process.h"

#if defined __cplusplus && defined EXCEPTION_POLICY
#define check_error(status) \
   if (status == -1) \
      throw errno
#define pcheck_error(status) \
   if (status == (void*)-1) \
      throw errno
#define psemcheck_error(status) \
   if (status == SEM_FAILED) \
      throw errno
#define check_null_error(pnt) \
   if ((pnt) == NULL) \
      throw (errno == 0 ? ENOMEM : errno)
#else
#define check_error(status) \
   if (status == -1) \
      do { \
         fprintf (stderr, "%s at \"%s\":%d: %s\n", \
                  __FUNCTION__ , __FILE__, __LINE__, strerror (errno)); \
         *((int*)0) = 0; \
         abort (); \
      } while (0)
#define pcheck_error(status) \
   if (status == (void*)-1) \
      do { \
         fprintf (stderr, "%s at \"%s\":%d: %s\n", \
                  __FUNCTION__ , __FILE__, __LINE__, strerror (errno)); \
         *((int*)0) = 0; \
         abort (); \
      } while (0)
#define psemcheck_error(status) \
   if (status == SEM_FAILED) \
      do { \
         fprintf (stderr, "%s at \"%s\":%d: %s\n", \
                  __FUNCTION__ , __FILE__, __LINE__, strerror (errno)); \
         *((int*)0) = 0; \
         abort (); \
      } while (0)
#define check_null_error(pnt) \
   if ((pnt) == NULL) \
      do { \
         fprintf (stderr, "%s, pointer: \"%s\", function: \"%s\":%d, file: \"%s\"\n", \
                  strerror (errno == 0 ? ENOMEM : errno), #pnt, __FUNCTION__, __LINE__ , __FILE__); \
         *((int*)0) = 0; \
         abort (); \
      } while (0)
#endif

// process

pid_t pfork(void)
{
   pid_t res = fork();
   check_error(res);
   return res;
}

pid_t pwait(int *status)
{
   pid_t res = wait(status);
   check_error(res);
   return res;
}

pid_t pwaitpid(pid_t pid, int *status, int options)
{
   pid_t res = waitpid(pid, status, options);
   check_error(res);
   return res;
}

void pkill(pid_t pid, int sig)
{
   int st = kill(pid, sig);
   check_error(st);
}

void pexecl(const char *pathname, const char *arg, ... /* (char  *) NULL */)
{
   va_list vargs;
   int n = 0;
   va_start(vargs, arg);
   const char* t = arg;
   while (t != NULL)
   {
      n++;
      t = va_arg(vargs, char*);
   }
   va_end(vargs);

   const char *args[n+1];
   va_start(vargs, arg);
   args[0] = arg;
   int i;
   for(i = 1; i < n; i++)
      args[i] = va_arg(vargs, char*);
   args[i] = NULL;
   va_end(vargs);

   int st = execv(pathname, (char* const*)args);
   check_error(st);
}

void pexeclp(const char *file, const char *arg, ... /* (char  *) NULL */)
{
   va_list vargs;
   int n = 0;
   va_start(vargs, arg);
   const char* t = arg;
   while (t != NULL)
   {
      n++;
      t = va_arg(vargs, char*);
   }
   va_end(vargs);

   const char *args[n+1];
   va_start(vargs, arg);
   args[0] = arg;
   int i;
   for(i = 1; i < n; i++)
      args[i] = va_arg(vargs, char*);
   args[i] = NULL;
   va_end(vargs);

   int st = execvp(file, (char* const*)args);
   check_error(st);
}

void pexecle(const char *pathname, const char *arg, ... /* (char  *) NULL, char *const envp[] */)
{
   va_list vargs;
   int n = 0;
   va_start(vargs, arg);
   const char* t = arg;
   while (t != NULL)
   {
      n++;
      t = va_arg(vargs, char*);
   }
   va_end(vargs);

   const char *args[n+1];
   va_start(vargs, arg);
   args[0] = arg;
   int i;
   for(i = 1; i < n; i++)
      args[i] = va_arg(vargs, char*);
   args[i] = NULL;
   char *const *envp;
   envp = va_arg(vargs, char* const*);
   va_end(vargs);

   int st = execvpe(pathname, (char* const*)args, envp);
   check_error(st);
}

void psigaction(int signum, const struct sigaction *act, struct sigaction *oldact)
{
   int st = sigaction(signum, act, oldact);
   check_error(st);
}

// System V - shared memory

int pshmget(key_t key, size_t size, int shmflg)
{
   require ((size > 0) || !(shmflg & IPC_CREAT), concat_3str("invalid size (", int2str(size), ")"));

   int res = shmget(key, size, shmflg);
   check_error(res);
   return res;
}

int pshmctl(int shmid, int cmd, struct shmid_ds *buf)
{
   int res = shmctl(shmid, cmd, buf);
   check_error(res);
   return res;
}

void *pshmat(int shmid, const void *shmaddr, int shmflg)
{
   void *res = shmat(shmid, shmaddr, shmflg);
   pcheck_error(res);
   return res;
}

void pshmdt(const void *shmaddr)
{
   int st = shmdt(shmaddr);
   check_error(st);
}

// System V - semaphores

int psemget(key_t key, int nsems, int semflg)
{
   require (nsems > 0, concat_3str("invalid number of semaphores (", int2str(nsems), ")"));

   int res = semget(key, nsems, semflg);
   check_error(res);
   return res;
}

int psemctl(int semid, int semnum, int cmd)
{
   int res = semctl(semid, semnum, cmd);
   check_error(res);
   return res;
}

int psemctl(int semid, int semnum, int cmd, void *u)
{
   int res = semctl(semid, semnum, cmd, u);
   check_error(res);
   return res;
}

/* does not work
int psemctl(int semid, int semnum, int cmd, ...)
{
   va_list vargs;
   va_start(vargs, cmd);
   int res = semctl(semid, semnum, cmd, vargs);
   check_error(res);
   va_end(vargs);
   return res;
}
*/

void psemop(int semid, struct sembuf *sops, size_t nsops)
{
   int st = semop(semid, sops, nsops);
   check_error(st);
}

void psem_up(int semid, short unsigned int index)
{
   struct sembuf op = {index, 1, 0};
   psemop(semid, &op, 1);
}

void psem_down(int semid, short unsigned int index)
{
   struct sembuf op = {index, -1, 0};
   psemop(semid, &op, 1);
}

void psem_down2(int semid, short unsigned int index1, unsigned int index2)
{
   require (index1 != index2, "both semaphore indexes are equal!");

   struct sembuf ops[2] = {{(unsigned short)index1, -1, 0}, {(unsigned short)index2, -1, 0}};
   psemop(semid, ops, 2);
}

void psem_setval(int semid, int semnum, int value)
{
   union semun {
      int val; /* for SETVAL */
      struct semid_ds *buf; /* for IPC_STAT and IPC_SET */
      unsigned short *array; /* for GETALL and SETALL */
   } semopts;


   semopts.val = value;
   int st = semctl(semid, semnum, SETVAL, semopts);
   check_error(st);
}

// System V - message queues

int pmsgget(key_t key, int msgflg)
{
   int res = msgget(key, msgflg);
   check_error(res);
   return res;
}

int pmsgctl(int msqid, int cmd, struct msqid_ds *buf)
{
   int res = msgctl(msqid, cmd, buf);
   check_error(res);
   return res;
}

void pmsgsnd(int msqid, const void *msgp, size_t msgsz, int msgflg)
{
   int st = msgsnd(msqid, msgp, msgsz, msgflg);
   check_error(st);
}

size_t pmsgrcv(int msqid, void *msgp, size_t msgsz, long msgtyp, int msgflg)
{
   size_t res = msgrcv(msqid, msgp, msgsz, msgtyp, msgflg);
   check_error((int)res);
   return res;
}



// POSIX semaphores

// named:

sem_t *psem_open(const char *name, int oflag)
{
   sem_t *res = sem_open(name, oflag);
   psemcheck_error(res);
   return res;
}

sem_t *psem_open(const char *name, int oflag, mode_t mode, unsigned int value)
{
   sem_t *res = sem_open(name, oflag, mode, value);
   psemcheck_error(res);
   return res;
}


/* does not work
sem_t *psem_open(const char *name, int oflag, ...)
{
   va_list vargs;
   va_start(vargs, oflag);
   sem_t* res = sem_open(name, oflag, vargs);
   psemcheck_error(res);
   va_end(vargs);
   return res;
}
*/

void psem_close(sem_t *sem)
{
   require (sem != NULL, "sem_t target variable required");

   int st = sem_close(sem);
   check_error(st);
}

void psem_unlink(const char *name)
{
   int st = sem_unlink(name);
   check_error(st);
}

// unnamed:

void psem_init(sem_t *sem, int pshared, unsigned int value)
{
   require (sem != NULL, "sem_t target variable required");

   int st = sem_init(sem, pshared, value);
   check_error(st);
}

void psem_destroy(sem_t *sem)
{
   require (sem != NULL, "sem_t target variable required");

   int st = sem_destroy(sem);
   check_error(st);
}

//int sem_getvalue(sem_t *sem, int *sval); // race-condition!

// named and unnamed:


void psem_wait(sem_t *sem)
{
   require (sem != NULL, "sem_t target variable required");

   int st = sem_wait(sem);
   check_error(st);
}

//  return true on success
int psem_trywait(sem_t *sem)
{
   require (sem != NULL, "sem_t target variable required");

   int res = 1; // success

   int st = sem_trywait(sem);
   if (st == -1 && errno == EAGAIN)
      res = 0;
   else
      check_error(st);
   return res;
}

//  return true on success, false if timeout has expired
int psem_timedwait(sem_t *sem, const struct timespec *abs_timeout)
{
   require (sem != NULL, "sem_t target variable required");

   int res = 1; // success

   int st = sem_timedwait(sem, abs_timeout);
   if (st == -1 && errno == ETIMEDOUT)
      res = 0;
   else
      check_error(st);
   return res;
}

void psem_post(sem_t *sem)
{
   require (sem != NULL, "sem_t target variable required");

   int st = sem_post(sem);
   check_error(st);
}

// pipes

void ppipe(int pipefd[2])
{
   int st = pipe(pipefd);
   check_error(st);
}

FILE *ppopen(const char *command, const char *type)
{
   require (command != NULL, "string command argument required");
   require (type != NULL, "string type argument required");

   FILE* fp = popen(command, type);
   check_null_error(fp);
   return fp;
}

void ppclose(FILE *stream)
{
   require (stream != NULL, "stream argument required");

   int st = pclose(stream);
   check_error(st);
}

