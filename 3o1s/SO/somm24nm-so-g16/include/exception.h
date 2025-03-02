/**
 * \file
 * \brief SOMM24/NM exception module
 * \author Artur Pereira - 2023-2024
 */
#ifndef __SOMM24_NM_EXCEPTION__
#define __SOMM24_NM_EXCEPTION__

#include <exception>

#include "errno.h"

/** @{ */

/**
 * \brief The \b somm24/nm exception class
 * \ingroup exception
 */
class Exception: public std::exception
{
  public:
    int en;                 ///< (system) error number
    const char *func;       ///< name of function that has thrown the exception
    char msg[100];          ///< buffer to store the exception message

    /**
     * \brief the constructor
     * \param _en (system) error number 
     * \param _func name of function throwing the exception
     */
     Exception(int _en, const char *_func);

    /**
     * \brief default exception message
     * \return pointer to exception message
     */
    const char *what() const throw();
};

/** @} */

#endif /* __SOMM24_NM_EXCEPTION__ */
