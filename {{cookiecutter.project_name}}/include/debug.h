//
// Created by Matteo Ranzi on 26/09/25.
//

#ifndef DEBUG_H
#define DEBUG_H

#include <stdio.h>

#define DEBUG_LEVEL_NONE  0
#define DEBUG_LEVEL_ERROR 1
#define DEBUG_LEVEL_WARN  2
#define DEBUG_LEVEL_INFO  3


#ifndef DEBUG_LEVEL
#define DEBUG_LEVEL DEBUG_LEVEL_NONE
#endif

#if DEBUG_LEVEL >= 3
#define DEBUG_INFO(...) printf("[INFO]\t" __VA_ARGS__)
#else
#define DEBUG_INFO(...)
#endif

#if DEBUG_LEVEL >= 2
#define DEBUG_WARN(...) printf("[WARN]\t" __VA_ARGS__)
#else
#define DEBUG_WARN(...)
#endif

#if DEBUG_LEVEL >= 1
#define DEBUG_ERROR(...) printf("[ERROR]\t" __VA_ARGS__)
#else
#define DEBUG_ERROR(...)
#endif


#endif //DEBUG_H
