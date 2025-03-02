/**
 * \anchor probing
 * 
 * \defgroup probing Probing
 * \details This toolkit allows to selected the set of functions whose
 * probing messages should be logged/displayed
 *
 * This toolkit provides a simple monitoring system which allows:
 * - the programmer to include messages into the code, which can be
 *   turned on/off at will.
 * - The all monitoring system may be turned on/off.
 * - The system uses function IDs to determine which messages must be displayed.
 * - Upon activating the probing system, 
 *   one can set, add or remove ranges of IDs that must be logged/displayed.
 *
 *   The interface of this module is predefined, being composed of the following functions:
 *   <table>
 *   <tr> <th> \c function <th>role
 *   <tr> <td> \c soProbeOpen <td> Opening of the probing system
 *   <tr> <td> \c soProbeClose <td> Closing the probing system
 *   <tr> <td> \c soProbeFile <td> Set the probing output file
 *   <tr> <td> \c soProbeStream <td> Set the probing output stream
 *   <tr> <td> \c soProbeSetIDs <td> Set probing IDs to the given range
 *   <tr> <td> \c soProbeAddIDs <td> Add a range of probing IDs to the active map
 *   <tr> <td> \c soProbeRemoveIDs <td> Remove a range of probing IDs from the active map
 *   <tr> <td> \c soProbe <td> Print a probing message with blue color if ID is activated
 *   </table>
 *
 *  \author Artur Pereira - 2008-2009, 2016-2024
 *  \author Miguel Oliveira e Silva - 2009, 2017
 *  \author António Rui Borges - 2010-2015
 *
 */

#ifndef __SOMM24_NM_PROBING__
#define __SOMM24_NM_PROBING__

#include <stdio.h>
#include <stdint.h>
#include <stdarg.h>
#include <errno.h>

/** @{ */

/* *************************************** */

extern const char *SOPROBE_RED; ///< the red probing color
extern const char *SOPROBE_GREEN;   ///< the green probing color
extern const char *SOPROBE_YELLOW;  ///< the yellow probing color
extern const char *SOPROBE_BLUE;    ///< the blue probing color
extern const char *SOPROBE_MAGENTA; ///< the magenta probing color
extern const char *SOPROBE_CYAN;    ///< the cyan probing color

/* *************************************** */

/**
 *  \brief Opening of the probing system.
 *  \param [in] fp a file pointer of the output stream to be used
 *  \param [in] lower the minimum probing ID to be activated
 *  \param [in] upper the maximum probing ID to be activated
 */
void soProbeOpen(FILE * fp, uint32_t lower = 0, uint32_t upper = 1000);

/* *************************************** */

/**
 *  \brief Closing the probing system.
 */
void soProbeClose(void);

/* *************************************** */

/**
 *  \brief Set the probing output file.
 *  \details Only the stream is changed, keeping the activated ranges of IDs
 *  \param [in] fname the path to the file where output is sent to
 */
void soProbeFile(const char * fname);

/* *************************************** */
/**
 *  \brief Set the probing output stream.
 *  \details Only the stream is changed, keeping the activated ranges of IDs
 *  \param [in] fp a file pointer of the output stream to be used
 */
void soProbeStream(FILE * fp);

/* *************************************** */

/**
 *  \brief Set probing IDs to the given range.
 *  \details deactivate all IDs and then activate the given range
 *  \param [in] lower the minimum probing ID to be activated
 *  \param [in] upper the maximum probing ID to be activated
 */
void soProbeSetIDs(uint32_t lower, uint32_t upper);

/* *************************************** */

/**
 *  \brief Add a range of probing IDs to the active map
 *  \param [in] lower the minimum probing ID to be activated
 *  \param [in] upper the maximum probing ID to be activated
 */
void soProbeAddIDs(uint32_t lower, uint32_t upper);

/* *************************************** */

/**
 *  \brief Remove a range of probing IDs from the active map
 *  \param [in] lower the minimum probing ID to be deactivated
 *  \param [in] upper the maximum probing ID to be deactivated
 */
void soProbeRemoveIDs(uint32_t lower, uint32_t upper);

/* *************************************** */

/**
 *  \brief Print a probing message with blue color if ID is activated.
 *
 * \details
 *  - Apart from the \e id argument, it works like the \e fprintf function.
 *
 *  \param [in] id the probing ID of the message
 *  \param [in] fmt the format string (as in \e fprintf)
 */
void soProbe(uint32_t id, const char *fmt, ...);

/* *************************************** */

/**
 *  \brief Print a probing message with given color if ID is visible.
 *
 * \details
 *  - Apart from the \e color and \e id arguments, it works like the \e fprintf function.
 *  - The color is a string in ANSI terminal format. 
 *    - For instance "01;31" means red font.
 *  - Four macros are defined for red, blue, green and yellow.
 *
 *  \param [in] color string defining the probing color
 *  \param [in] id the probing ID of the message
 *  \param [in] fmt the format string (as in \e fprintf)
 */
void soProbe(const char *color, uint32_t id, const char *fmt, ...);

/* *************************************** */

/** @} */

#endif /* __SOMM24_NM_PROBING__ */
