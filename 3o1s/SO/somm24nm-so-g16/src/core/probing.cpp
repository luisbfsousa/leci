
/*
 *  \author Artur Pereira - 2008-2009, 2016-2024
 *  \author Miguel Oliveira e Silva - 2009
 *  \author António Rui Borges - 2010-2015
 */

#include <stdio.h>
#include <stdarg.h>
#include <errno.h>
#include <inttypes.h>

#include "probing.h"
#include "exception.h"

/* *************************************** */

// ================================================================================== //

    const char * SOPROBE_RED = "01;31";
    const char * SOPROBE_GREEN = "01;32";
    const char * SOPROBE_YELLOW = "01;33";
    const char * SOPROBE_BLUE = "01;34";
    const char * SOPROBE_MAGENTA = "01;35";
    const char * SOPROBE_CYAN = "01;36";

// ================================================================================== //

static FILE *fp = NULL;
static bool probe_ids[1000] = { false };

// ================================================================================== //

static void soAdjustRange(uint32_t & lower, uint32_t & upper)
{
    /* adjust range */
    if (lower > upper)
        lower = upper = 0;
    if (lower > 999)
        lower = 999;
    if (upper > 999)
        upper = 999;
}

// ================================================================================== //

void soProbeOpen(FILE * fs, uint32_t lower, uint32_t upper)
{
    /* close previous stream, if one is opened */
    if (fp != NULL and fp != fs)
    {
        fflush(fp);
        fclose(fp);
    }

    /* set output stream */
    fp = fs;

    /* adjust range */
    soAdjustRange(lower, upper);

    /* set probing range */
    for (uint32_t i = 0; i <= 999; i++)
        probe_ids[i] = false;
    for (uint32_t i = lower; i <= upper; i++)
        probe_ids[i] = true;
}

// ================================================================================== //

void soProbeClose(void)
{
    /* close previous stream, if one is opened */
    if (fp != NULL)
    {
        fflush(fp);
        fclose(fp);
    }

    /* set output stream */
    fp = NULL;
}

// ================================================================================== //

void soProbeFile(const char *fname)
{
    /* close previous stream, if one is opened */
    if (fp != NULL and fp != stdout and fp != stderr)
    {
        fflush(fp);
        fclose(fp);
    }

    /* open the file for writting */
    FILE *fs = fopen(fname, "w");

    /* check validity */
    if (fs == NULL)
        throw Exception(errno, __func__);

    /* set output stream */
    fp = fs;
}

// ================================================================================== //

void soProbeStream(FILE * fs)
{
    /* close previous stream, if one is opened */
    if (fp != NULL and fp != stdout and fp != stderr)
    {
        fflush(fp);
        fclose(fp);
    }

    /* set output stream */
    fp = fs;
}

// ================================================================================== //

void soProbeSetIDs(uint32_t lower, uint32_t upper)
{
    /* check arguments */
    if (upper < lower)
        throw Exception(EINVAL, __func__);

    /* adjust range */
    soAdjustRange(lower, upper);

    /* set probing range */
    for (uint32_t i = 0; i <= 999; i++)
        probe_ids[i] = false;
    for (uint32_t i = lower; i <= upper; i++)
        probe_ids[i] = true;
}

// ================================================================================== //

void soProbeAddIDs(uint32_t lower, uint32_t upper)
{
    /* check arguments */
    if (upper < lower)
        throw Exception(EINVAL, __func__);

    /* adjust range */
    soAdjustRange(lower, upper);

    /* set probing range */
    for (uint32_t i = lower; i <= upper; i++)
        probe_ids[i] = true;
}

// ================================================================================== //

void soProbeRemoveIDs(uint32_t lower, uint32_t upper)
{
    /* check arguments */
    if (upper < lower)
        throw Exception(EINVAL, __func__);

    /* adjust range */
    soAdjustRange(lower, upper);

    /* set hidden range */
    for (uint32_t i = lower; i <= upper; i++)
        probe_ids[i] = false;
}

// ================================================================================== //

void soProbe(uint32_t id, const char *fmt, ...)
{
    /* do nothing, if out of active range */
    if ((fp == NULL) or (id > 999) or (probe_ids[id] == false))
        return;

    /* print the message */
    fprintf(fp, "\e[01;34m(%03u)\e[0m ", id);
    va_list ap;
    va_start(ap, fmt);
    vfprintf(fp, fmt, ap);
    va_end(ap);
}

// ================================================================================== //

void soProbe(const char *color, uint32_t id, const char *fmt, ...)
{
    /* do nothing, if out of active range */
    if ((fp == NULL) or (id > 999) or (probe_ids[id] == false))
        return;

    /* print the message */
    fprintf(fp, "\e[%sm(%03u)\e[0m ", color, id);
    va_list ap;
    va_start(ap, fmt);
    vfprintf(fp, fmt, ap);
    va_end(ap);
}

// ================================================================================== //

