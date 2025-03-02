
/*
 *  This toolkit provides a simple way to select what binary version of
 *  the functions to use in a given moment.
 *  The selection can be done in run time.
 *  The IDs of the functions are the same used by the probing system.
 *
 *  \author Artur Pereira - 2019-2024
 *
 *  \remarks In case an error occurs, every function throws an error code (an int)
 */

#include "binselection.h"

#include <stdint.h>

/* module data structure */
#define MAPSIZE 1000
static bool selected_bin_ids[MAPSIZE] = { false };
static bool saved_bin_ids[MAPSIZE] = { false };
static bool flag = false;

/* *************************************** */

static void soAdjustRange(uint32_t & lower, uint32_t & upper)
{
    /* adjust range */
    if (lower > upper)
        lower = upper = 0;
    if (lower >= MAPSIZE)
        lower = MAPSIZE-1;
    if (upper >= MAPSIZE)
        upper = MAPSIZE-1;
}

/* *************************************** */

/*
 *  \brief Set bin IDs.
 *  \details reset current configuration and set given range
 *    as the bin IDs to activate.
 *  \param lower left margin of the range to be activated
 *  \param upper right margin of the range to be activated
 */
void soBinSetIDs(uint32_t lower, uint32_t upper)
{
    /* reset configuration */
    for (uint32_t i = 0; i < MAPSIZE; i++)
        selected_bin_ids[i] = false;
    flag = true;

    /* adjust given range */
    soAdjustRange(lower, upper);

    /* activate given range */
    for (uint32_t i = lower; i <= upper; i++)
        selected_bin_ids[i] = true;
}

/* *************************************** */

/*
 *  \brief Add bin IDs to the current configuration.
 *  \param lower left margin of the range to be activated
 *  \param upper right margin of the range to be activated
 */
void soBinAddIDs(uint32_t lower, uint32_t upper)
{
    /* initialized if not done yet, with an empty range */
    if (flag == false)
        soBinSetIDs(0, 0);

    /* adjust given range */
    soAdjustRange(lower, upper);

    /* activate given range */
    for (uint32_t i = lower; i <= upper; i++)
        selected_bin_ids[i] = true;
}

/* *************************************** */

/*
 *  \brief Remove bin IDs from the current configuration.
 *  \param lower left margin of the range to be deactivated
 *  \param upper right margin of the range to be deactivated
 */
void soBinRemoveIDs(uint32_t lower, uint32_t upper)
{
    /* initialized if not done yet, with a full range */
    if (flag == false)
        soBinSetIDs(0, MAPSIZE-1);

    /* adjust given range */
    soAdjustRange(lower, upper);

    /* deactivate given range */
    for (uint32_t i = lower; i <= upper; i++)
        selected_bin_ids[i] = false;
}

/* *************************************** */

/*
 *  \brief Check if given ID is activated.
 *  \details IDs covered by the current configuration represent binary functions 
 *    to be used.
 *    In case of a not valid id return false.
 *  \param id ID of the function to be checked
 *  \return \c true if ID is covered by configuration; \c false otherwise
 */
bool soBinSelected(uint32_t id)
{
    /* initialized if not done yet, with an empty range */
    if (flag == false)
        soBinSetIDs(0, 0);

    /* ignore if id not valid */
    if (id >= MAPSIZE)
        return false;

    /* return state */
    return selected_bin_ids[id];
}

/* *************************************** */

/*
 * \brief Save the current map
 * \details A copy of the current map is internally saved, and can be restore afterwards.
 *  Only one copy is saved. So, calling \c soBinSaveMap twice result in the lost of the previous 
 *  saved map.
 */
void soBinSaveMap()
{
    for (int i = 0; i < MAPSIZE; i++)
    {
        saved_bin_ids[i] = selected_bin_ids[i];
    }
}

/* *************************************** */

/*
 * \brief The saved bin map is restored
 * \details The map saved with the last call to \c soBinSaveMap is restored.
 *  If no map was saved, an empty map is set;
 */
void soBinRestoreMap()
{
    for (int i = 0; i < MAPSIZE; i++)
    {
        selected_bin_ids[i] = saved_bin_ids[i];
    }
}

/* *************************************** */


