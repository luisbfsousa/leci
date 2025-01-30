#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <stdint.h>
#include <string.h>
#include <assert.h>

#include "linked-list.h"

/*******************************************************/

SllNode* sllDestroy(SllNode* list)
{
    return list;
}

/*******************************************************/

void sllPrint(SllNode *list, FILE *fout)
{
    SllNode *p = list;
    while(p != NULL){
        printf("%s Nmec%d\n", p->reg.name, p->reg.nmec);
        p = p->next;
    }

}

/*******************************************************/

SllNode* sllInsert(SllNode* list, uint32_t nmec, const char *name)
{
    assert(name != NULL && name[0] != '\0');
    assert(!sllExists(list, nmec));

    SllNode *newNode = (SllNode*)malloc(sizeof(SllNode));
    if(newNode == NULL){
        fprintf(stderr, "Error allocating memory: %s\n", strerror(errno));
        exit(1);
    }

    newNode->reg.nmec = nmec;
    newNode->reg.name = strdup(name); // Duplicate the string
    newNode->next = list; // Insert at the beginning of the list

    return newNode; // Return the new head of the list
}

/*******************************************************/

bool sllExists(SllNode* list, uint32_t nmec)
{
    SllNode *p = list;
    while (p != NULL) {
        if (p->reg.nmec == nmec) {
            return true;
        }
        p = p->next;
    }
    return false;
}

/*******************************************************/

SllNode* sllRemove(SllNode* list, uint32_t nmec)
{
    assert(list != NULL);
    assert(sllExists(list, nmec));

    SllNode *prev = NULL;
    SllNode *curr = list;

    while (curr != NULL) {
        if (curr->reg.nmec == nmec) {
            if (prev == NULL) {
                // The node to remove is the head of the list
                list = curr->next;
            } else {
                // The node to remove is in the middle or end of the list
                prev->next = curr->next;
            }
            free(curr->reg.name); // Free the duplicated string
            free(curr); // Free the node
            break;
        }
        prev = curr;
        curr = curr->next;
    }

    return list;
}

/*******************************************************/

const char *sllGetName(SllNode* list, uint32_t nmec)
{
    assert(list != NULL);
    assert(sllExists(list, nmec));

    SllNode *p = list;
    while (p != NULL) {
        if (p->reg.nmec == nmec) {
            return p->reg.name;
        }
        p = p->next;
    }
    
    return NULL;
}

/*******************************************************/

SllNode* sllLoad(SllNode *list, FILE *fin, bool *ok)
{
    assert(fin != NULL);

    if (ok != NULL)
       *ok = false; // load failure

    char line[256];
    while (fgets(line, sizeof(line), fin)) {
        uint32_t nmec;
        char name[100];

        if (sscanf(line, "%u %[^\n]", &nmec, name) == 2) {
            list = sllInsert(list, nmec, name);
        } else {
            // If parsing fails, return the current list and indicate failure
            return list;
        }
    }

    if (ok != NULL)
       *ok = true; // load success

    return list;
}

/*******************************************************/

