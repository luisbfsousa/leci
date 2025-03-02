/**
 *  \file 
 *  \brief The bin IDs selection toolkit.
 *
 *  This toolkit provides a simple way to select what binary version of
 *  the functions to use in a given moment.
 *  The selection is done in run time.
 *  The IDs of the functions are the same used by the probing system.
 *
 *  \author Artur Pereira - 2019-2024
 *
*  \remarks In case an error occurs, every function throws an error code (an int)
*/

#ifndef __SOMM24_NM_BIN_SELECTION__
#define __SOMM24_NM_BIN_SELECTION__

#include <stdint.h>

/** 
 * \anchor binselection
 *
 * \defgroup binselection BinSelection
 * \details 
 * - This toolkit allows to choose the binary functions to be used, at run time.
 * - For every function to be developed by students,
 *   there are 3 versions, the main one,
 *   one in namespace \c binaries and one in namespace \c group:
 *   - the main version is a front end function, which allows to call
 *     the \c binaries or \c group version, based on the binary activation map state;
 *   - the \c binaries version is a binary available version of the function;
 *   - the \c group version is the one developed by students.
 *   .
 * - This toolkit makes available an API to select which binary version to
 *   activate.
 * - Every function has a unique ID
 *   - The ID is the same used by the probing toolkit (\ref probing)
 *
 **/

/** @{ */

/* *************************************** */

/**
 *  \brief Set bin configuration map.
 *  \details Resets the current bin configuration and sets the given range
 *    as the new bin configuration map.
 *  \param [in] lower left margin of the range to be activated
 *  \param [in] upper right margin of the range to be activated
 */
void soBinSetIDs(uint32_t lower, uint32_t upper);

/* *************************************** */

/**
 *  \brief Add bin ID range to the current bin configuration map.
 *  \param [in] lower left margin of the range to be added
 *  \param [in] upper right margin of the range to be added
 */
void soBinAddIDs(uint32_t lower, uint32_t upper);

/* *************************************** */

/**
 *  \brief Remove bin ID range from the current bin configuration map.
 *  \param [in] lower left margin of the range to be deactivated
 *  \param [in] upper right margin of the range to be deactivated
 */
void soBinRemoveIDs(uint32_t lower, uint32_t upper);

/* *************************************** */

/**
 *  \brief Check if given ID is activated.
 *  \details IDs covered by the current configuration represent binary functions 
 *    to be used.
 *  \param [in] id ID of the function to be checked
 *  \return \c true if the given ID is included in the current
 *      configuration map and \c false otherwise.
 */
bool soBinSelected(uint32_t id);

/* *************************************** */

/*
 * \brief Save the current map
 * \details A copy of the current map is internally saved, and can be restore afterwards.
 *  Only one copy is saved. So, calling \c soBinSaveMap twice result in the lost of the previous 
 *  saved map.
 */
void soBinSaveMap();

/* *************************************** */

/*
 * \brief The saved bin map is restored
 * \details The map saved with the last call to \c soBinSaveMap is restored.
 *  If no map was saved, an empty map is set;
 */
void soBinRestoreMap();

/* *************************************** */

/** @} */

#endif /* __SOMM24_NM_BIN_SELECTION__ */
