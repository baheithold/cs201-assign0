/*
 *  File:   string.c
 *  Author: Brett Heithold
 *  Description: This is the implementation file for the string module.
 */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "string.h"

struct STRING {
    char *value;
};

STRING *newSTRING(char *x) {
    STRING *p = malloc(sizeof(STRING));
    assert(p != 0);
    p->value = x;
    return p;
}

char *getSTRING(STRING *p) {
    return p->value;
}

char *setSTRING(STRING *p, char *v) {
    char *old = p->value;
    p->value = v;
    return old;
}

void displaySTRING(void *v, FILE *fp) {
    fprintf(fp, "%s", getSTRING((STRING *)v));
}

void freeSTRING(void *v) {
    free((STRING *)v);
}
