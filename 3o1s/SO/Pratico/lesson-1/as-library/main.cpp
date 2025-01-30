#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <alloca.h>

#include "linked-list.h"

static SllNode* list = NULL;

/* ******************************************** */

static void printMenu(void)
{
    printf("\n"
            "+===============================================+\n"
            "|            Manipulation functions             |\n"
            "+===============================================+\n"
            "| 0 --- quit                                    |\n"
            "| 1 --- insert new student                      |\n"
            "| 2 --- print list                              |\n"
            "| 3 --- remove student, through number          |\n"
            "| 4 --- get student's name, given the number    |\n"
            "| 5 --- load students from file                 |\n"
            "| 6 --- destroy list elements                   |\n"
            "+===============================================+\n");
}

/* ******************************************** */
/* menu handling functions */
/* ******************************************** */

void menuChoiceDestroy()
{
    list = sllDestroy(list);
}

/* ******************************************** */

void menuChoiceInsert()
{
    uint32_t nmec;
    printf("Insert nmec: ");
    scanf("%u", &nmec);
    char name[80];
    printf("Insert name: ");
    scanf(" %[^\n]", name);
    list = sllInsert(list, nmec, name);
}

/* ******************************************** */

void menuChoicePrint()
{
    sllPrint(list, stdout);
}

/* ******************************************** */

void menuChoiceRemove()
{
    uint32_t nmec;
    printf("Insert nmec: ");
    scanf("%u", &nmec);
    list = sllRemove(list, nmec);
}

/* ******************************************** */

void menuChoiceSearch()
{
    uint32_t nmec;
    printf("Insert nmec: ");
    scanf("%u", &nmec);
    const char *name = sllGetName(list, nmec);
    printf("Name: %s\n", name);
}

/* ******************************************** */

void menuChoiceLoad()
{
    char fname[80];
    printf("Insert file name: ");
    scanf(" %[^\n]", fname);
    FILE *fin = fopen(fname, "r");
    if (fin == NULL)
    {
        printf("Fail opening file\n");
        return;
    }
    bool ok;
    list = sllLoad(list, fin, &ok);
    if (!ok)
    {
        printf("Error reading file\n");
        return;
    }
}

/* ******************************************** */

/* The main function */
int main()
{
    bool end = false;
    while (not end)
    {
        /* print menu */
        printMenu();

        /* get user menu option and validate it */
        uint32_t op = 0;
        printf("Your command: ");
        scanf("%u", &op);

        /* call processing function based on option */
        switch (op)
        {
            case 0: end = true; break;
            case 1: menuChoiceInsert(); break;
            case 2: menuChoicePrint(); break;
            case 3: menuChoiceRemove(); break;
            case 4: menuChoiceSearch(); break;
            case 5: menuChoiceLoad(); break;
            case 6: menuChoiceDestroy(); break;
            default: printf("Unkown option\n"); break;
        }
    }

    /* destroy list before quitting */
    list = sllDestroy(list);
    return 0;
}   /* end of main */

