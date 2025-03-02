/*
 *  
 *  ...
 *
 *  \author Artur Pereira - 2024
 */

#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <libgen.h>
#include <termios.h>
#include <regex.h>

#include <string>
#include <iostream>
#include <map>

#include "somm24.h"


/* ******************************************** */
/* print help message */
static void printUsage(const char *cmd_name)
{
    printf("Sinopsis: %s [OPTIONS]\n"
           "  OPTIONS:\n"
           "  -i infile      --- job input file (default: none)\n"
           "  -o outfile     --- print output file (default: stdout)\n"
           "  -O outfile     --- probbing file (default: stdout)\n"
           "  -P num-num     --- probe ID range (default: 0-0)\n"
           "  -A num[-num]   --- add ID or range of IDs to probe configuration\n"
           "  -R num[-num]   --- remove ID or range of IDs from probe configuration\n"
           "  -b             --- set bin selection map to 100-699\n"
           "  -g             --- set bin selection map to 0-0 (default)\n"
           "  -a num[-num]   --- add ID or range of IDs to bin selection map\n"
           "  -r num[-num]   --- remove ID or range of IDs from bin selection map\n"
           "  -S             --- run in single step\n"
           "  -h             --- print this help\n", cmd_name
    );
}

/* ******************************************** */
/*
 * pause simulation
 */
bool pauseSim(const char *prompt = "", bool quit = true)
{
    static bool firstTime = true;
    static struct termios prev, cur;
    if (firstTime)
    {
        firstTime = false;
        tcgetattr(STDIN_FILENO, &prev);
        cur = prev;
        cur.c_lflag &= (~ICANON);
        tcsetattr(STDIN_FILENO, TCSANOW, &cur);
    }

    printf("%s. Continue (Y/n)? ", prompt); fflush(stdout);
    int res;
    while (true)
    {
        res = getchar();
        printf("\n");
        if (res == 'n' or res == 'N') break;
        if (res == 'q') break;
        if (res == 'y' or res == 'Y' or res == '\n') return true;
        printf("Bad option! Continue (Y/n)? "); fflush(stdout);
    }
    if (quit) exit(0);
    else return false;
}

/* ******************************************** */
/* The main function */
int main(int argc, char *argv[])
{
    const char *progName = basename(argv[0]); 

    /* by default, send probing to stdout */
    soProbeOpen(stdout, 0, 0);

    /* config file stream */
    FILE *fin = nullptr;

    /* module print stream */
    FILE *fout = stdout;

    /* single step execution */
    bool singleStep = false;

    /* process command line options */
    int opt;
    while ((opt = getopt(argc, argv, "i:o:O:P:A:R:bga:r:hS")) != -1)
    {
        switch (opt)
        {
            case 'i':   // --config-file
            {
                fin = fopen(optarg, "r");
                if (fin == nullptr)
                {
                    fprintf(stderr, "%s: Bad argument (\"%s\"): fail opening file.\n", progName, optarg);
                    return EXIT_FAILURE;
                }
                break;
            }
            case 'o':   // print output file // TODO point: include in simulation parameters
            {
                if ((fout = fopen(optarg, "w")) == NULL)
                {
                    fprintf(stderr, "%s: Bad argument (\"%s\"): fail opening file.\n", progName, optarg);
                    return EXIT_FAILURE;
                }
                break;
            }
            case 'O':          /* set probbing file */
            {
                soProbeFile(optarg);
                break;
            }
            case 'P':          /* set ID range to probing system */
            {
                uint32_t lower, upper;
                uint32_t cnt = 0;
                if ( (sscanf(optarg, "%d%*[,-]%d %n", &lower, &upper, &cnt) != 2) 
                        or (cnt != strlen(optarg)) )
                {
                    fprintf(stderr, "%s: Bad argument (%s) to '-%c' option.\n", progName, optarg, opt);
                    printUsage(progName);
                    return EXIT_FAILURE;
                }
                soProbeSetIDs(lower, upper);
                break;
            }
            case 'A':          /* add IDs to probe conf */
            {
                uint32_t lower, upper;
                uint32_t cnt = 0;
                if ( (sscanf(optarg, "%d%*[,-]%d %n", &lower, &upper, &cnt) != 2) 
                        or (cnt != strlen(optarg)) )
                {
                    fprintf(stderr, "%s: Bad argument (%s) to '-%c' option.\n", progName, optarg, opt);
                    printUsage(progName);
                    return EXIT_FAILURE;
                }
                soProbeAddIDs(lower, upper);
                break;
            }
            case 'R':          /* remove IDs from probe conf */
            {
                uint32_t lower, upper;
                uint32_t cnt = 0;
                if ( (sscanf(optarg, "%d-%d %n", &lower, &upper, &cnt) != 2) 
                        or (cnt != strlen(optarg)) )
                {
                    fprintf(stderr, "%s: Bad argument (%s) to '-%c' option.\n", progName, optarg, opt);
                    printUsage(progName);
                    return EXIT_FAILURE;
                }
                soProbeRemoveIDs(lower, upper);
                break;
            }
            case 'b':  // set binary mode
            {
                soBinSetIDs(100, 999);
                break;
            }
            case 'g':  // set binary mode
            {
                soBinSetIDs(0, 0);
                break;
            }
            case 'a':          /* add IDs to probe conf */
            case 'r':          /* remove IDs from probe conf */
            {
                regex_t regex;
                regcomp(&regex, "^[0-9]+-[0-9]+$", REG_EXTENDED | REG_NOSUB);
                uint32_t lower, upper;
                uint32_t cnt = 0;
                if (regexec(&regex, optarg, 0, NULL, 0) == 0)
                {
                    sscanf(optarg, "%u-%u", &lower, &upper);
                }
                else if ( (sscanf(optarg, "%d%n", &lower, &cnt) == 1) and (cnt == strlen(optarg)) )
                {
                    upper = lower;
                }
                else
                {
                    fprintf(stderr, "%s: Bad argument (%s) to '-%c' option.\n", progName, optarg, opt);
                    return EXIT_FAILURE;
                }
                
                if (opt == 'r')
                    soBinRemoveIDs(lower, upper);
                else
                    soBinAddIDs(lower, upper);

                break;
            }
            case 'h':
            {
                printUsage(progName);
                return 0;
            }
            case 'S':
            {
                singleStep = true;
                break;
            }
            default:
            {
                fprintf(stderr, "%s: Wrong option (\"-%c\".\n", progName, opt);
                printUsage(progName);
                return EXIT_FAILURE;
            }
        }
    }

    /* set fout stream as no buffered */
    setvbuf(fout, NULL, _IONBF, 0);

    /* init simulation */
    fprintf(stdout, "\n\e[34;1mStarting simulation\e[0m\n");

    simInit(fin);

    /* do simulation */
    do {
        fprintf(fout, "\n//////////////////////////////////////////////////////////////\n\n");
        simPrint(fout, PRINT_ALL);
        fprintf(fout, "\n//////////////////////////////////////////////////////////////\n\n");
        if (singleStep) pauseSim();
    } while (simStep());

    /* end simulation */
    fprintf(stdout, "\n\e[34;1mEnding simulation\e[0m\n");
    simTerm();
}
