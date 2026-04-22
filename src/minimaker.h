#ifndef MINIMAKER_H
#define MINIMAKER_H

#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <unistd.h>
#include <sys/types.h>
#include <err.h>

typedef enum {
    STRING,

    VARIABLE,
    RULE,
} list_type;

typedef struct {
    void *data;
    list_type type;
    struct list *next;
} list;

// Redefining something to handle strings easily
typedef struct {
    char *content;
    size_t len;
} text;

typedef struct {
    text *name;
    text *value;
} variable;

typedef struct {
    char *target;
    
} rule;




#endif
