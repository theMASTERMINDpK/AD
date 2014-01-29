#include <stdint.h>
#include "graphics.h"
#include <font.h>

#define BPMONO10_SPACE          8
#define BPMONO10_FIRST_CHAR     33
#define BPMONO10_CHARS          94
#define BPMONO10_HEIGHT         15
#define BPMONO10_WORDS_PER_LINE 1
#define BPMONO10_BITS_PER_PIXEL 2

const uint16_t bpmono10_data[BPMONO10_CHARS][BPMONO10_WORDS_PER_LINE * BPMONO10_HEIGHT + 1] =
{
    {  8, 0x0000,  0x0000,  0x0F00,  0x0F00,  0x0F00,  0x0F00,  0x0F00,  0x0F00,  0x0F00,  0x0000,  0x0F00,  0x0F00,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x3CF0,  0x3CF0,  0x3CF0,  0x3CF0,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x30C0,  0x30C0,  0xFFF0,  0x30C0,  0x30C0,  0x30C0,  0xFFF0,  0x30C0,  0x30C0,  0x0000,  0x0000,  0x0000,},
    {  7, 0x0000,  0x0000,  0x0000,  0x0300,  0x0FC0,  0x3030,  0x3000,  0x0FC0,  0x0030,  0x3030,  0x0FC0,  0x0300,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x3FF0,  0xCC30,  0xCCC0,  0xCCC0,  0x3330,  0x0CCC,  0x0CCC,  0x30CC,  0x3030,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0F00,  0x30C0,  0x30C0,  0x3300,  0x0C0C,  0x330C,  0xC0F0,  0xC0C0,  0x3F30,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0300,  0x0300,  0x0300,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x00C0,  0x0300,  0x0300,  0x0C00,  0x0C00,  0x0C00,  0x0C00,  0x0C00,  0x0300,  0x0300,  0x00C0,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0C00,  0x0300,  0x0300,  0x00C0,  0x00C0,  0x00C0,  0x00C0,  0x00C0,  0x0300,  0x0300,  0x0C00,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0CC0,  0x0300,  0x3FF0,  0x0300,  0x0CC0,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0300,  0x0300,  0x0300,  0xFFFC,  0x0300,  0x0300,  0x0300,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0F00,  0x0F00,  0x3C00,  0x3000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0xFFF0,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0F00,  0x0F00,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x00C0,  0x00C0,  0x00C0,  0x0300,  0x0300,  0x0C00,  0x0C00,  0x3000,  0x3000,  0x3000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x3FF0,  0xC00C,  0xC03C,  0xC0CC,  0xC30C,  0xCC0C,  0xF00C,  0xC00C,  0x3FF0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0300,  0x3F00,  0xC300,  0x0300,  0x0300,  0x0300,  0x0300,  0x0300,  0xFFFC,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x3FC0,  0xC030,  0x0030,  0x0030,  0x00C0,  0x0300,  0x0C00,  0x3000,  0xFFF0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x3FC0,  0xC030,  0x0030,  0x0030,  0x3FC0,  0x0030,  0x0030,  0xC030,  0x3FC0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0030,  0x00F0,  0x0330,  0x0C30,  0x3030,  0xC030,  0xFFFC,  0x0030,  0x0030,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x3FF0,  0xC000,  0xC000,  0xFFC0,  0x0030,  0x0030,  0x0030,  0x0030,  0xFFC0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0FC0,  0x3000,  0xC000,  0xCFC0,  0xF030,  0xC030,  0xC030,  0xC030,  0x3FC0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0xFFF0,  0x0030,  0x00C0,  0x00C0,  0x0300,  0x0300,  0x0C00,  0x0C00,  0x0C00,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x3FC0,  0xC030,  0xC030,  0xC030,  0x3FC0,  0xC030,  0xC030,  0xC030,  0x3FC0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x3FC0,  0xC030,  0xC030,  0xC030,  0xC0F0,  0x3F30,  0x0030,  0x00C0,  0x3F00,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0F00,  0x0F00,  0x0000,  0x0000,  0x0F00,  0x0F00,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x3C00,  0x3C00,  0x0000,  0x0000,  0x3C00,  0x3C00,  0xF000,  0xC000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0030,  0x03C0,  0x0C00,  0xF000,  0x0C00,  0x03C0,  0x0030,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0xFFF0,  0x0000,  0xFFF0,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0xC000,  0x3C00,  0x0300,  0x00F0,  0x0300,  0x3C00,  0xC000,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x3F00,  0xC0C0,  0x00C0,  0x0300,  0x0300,  0x0C00,  0x0000,  0x0C00,  0x0C00,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0FC0,  0x3030,  0xC3CC,  0xCCCC,  0xCCCC,  0xCCCC,  0xCFF0,  0x3000,  0x0FC0,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0F00,  0x0F00,  0x30C0,  0x30C0,  0x30C0,  0x3FC0,  0xC030,  0xC030,  0xC030,  0x0000,  0x0000,  0x0000,},
    {  7, 0x0000,  0x0000,  0x0000,  0xFFC0,  0xC030,  0xC030,  0xC030,  0xFFC0,  0xC030,  0xC030,  0xC030,  0xFFC0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0FC0,  0x3030,  0xC000,  0xC000,  0xC000,  0xC000,  0xC000,  0x3030,  0x0FC0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0xFF00,  0xC0C0,  0xC030,  0xC030,  0xC030,  0xC030,  0xC030,  0xC0C0,  0xFF00,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0xFFF0,  0xC000,  0xC000,  0xC000,  0xFFC0,  0xC000,  0xC000,  0xC000,  0xFFF0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0xFFF0,  0xC000,  0xC000,  0xC000,  0xFFC0,  0xC000,  0xC000,  0xC000,  0xC000,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0FC0,  0x3030,  0xC000,  0xC000,  0xC3F0,  0xC030,  0xC030,  0x3030,  0x0FC0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0xC030,  0xC030,  0xC030,  0xC030,  0xFFF0,  0xC030,  0xC030,  0xC030,  0xC030,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x3FF0,  0x0300,  0x0300,  0x0300,  0x0300,  0x0300,  0x0300,  0x0300,  0x3FF0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0xFFF0,  0x0030,  0x0030,  0x0030,  0x0030,  0x0030,  0x0030,  0x00C0,  0xFF00,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0xC030,  0xC0C0,  0xC300,  0xCC00,  0xFC00,  0xC300,  0xC0C0,  0xC030,  0xC030,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0xC000,  0xC000,  0xC000,  0xC000,  0xC000,  0xC000,  0xC000,  0xC000,  0xFFF0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0xC030,  0xC030,  0xF0F0,  0xF0F0,  0xCF30,  0xCF30,  0xC030,  0xC030,  0xC030,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0xC030,  0xF030,  0xF030,  0xCC30,  0xCC30,  0xC330,  0xC330,  0xC0F0,  0xC030,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x3FC0,  0xC030,  0xC030,  0xC030,  0xC030,  0xC030,  0xC030,  0xC030,  0x3FC0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0xFFC0,  0xC030,  0xC030,  0xC030,  0xC030,  0xFFC0,  0xC000,  0xC000,  0xC000,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x3FC0,  0xC030,  0xC030,  0xC030,  0xC030,  0xC030,  0xC030,  0xC030,  0x3FC0,  0x0300,  0x03F0,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0xFFC0,  0xC030,  0xC030,  0xC030,  0xC030,  0xFFC0,  0xC0C0,  0xC030,  0xC030,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x3FC0,  0xC030,  0xC000,  0x3C00,  0x03C0,  0x0030,  0x0030,  0xC030,  0x3FC0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0xFFC0,  0x0C00,  0x0C00,  0x0C00,  0x0C00,  0x0C00,  0x0C00,  0x0C00,  0x0C00,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0xC030,  0xC030,  0xC030,  0xC030,  0xC030,  0xC030,  0xC030,  0xC030,  0x3FC0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0xC030,  0xC030,  0xC030,  0x30C0,  0x30C0,  0x30C0,  0x0F00,  0x0F00,  0x0F00,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0xC030,  0xC030,  0xC030,  0xCF30,  0xCF30,  0xCF30,  0x30C0,  0x30C0,  0x30C0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0xC030,  0x30C0,  0x30C0,  0x0F00,  0x0F00,  0x0F00,  0x30C0,  0x30C0,  0xC030,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0xC030,  0xC030,  0xC030,  0x30C0,  0x30C0,  0x0F00,  0x0300,  0x0300,  0x0300,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0xFFF0,  0x0030,  0x00C0,  0x0300,  0x0C00,  0x3000,  0xC000,  0xC000,  0xFFF0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0xFC00,  0xC000,  0xC000,  0xC000,  0xC000,  0xC000,  0xC000,  0xC000,  0xC000,  0xC000,  0xFC00,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x3000,  0x3000,  0x0C00,  0x0C00,  0x0300,  0x0300,  0x00C0,  0x00C0,  0x00C0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0xFC00,  0x0C00,  0x0C00,  0x0C00,  0x0C00,  0x0C00,  0x0C00,  0x0C00,  0x0C00,  0x0C00,  0xFC00,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0300,  0x0CC0,  0x3030,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x3FC0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0C00,  0x0300,  0x00C0,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x3F00,  0x00C0,  0x00C0,  0x3FC0,  0xC0C0,  0xC0C0,  0x3FF0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0xC000,  0xC000,  0xC000,  0xCF00,  0xF0C0,  0xC030,  0xC030,  0xC030,  0xC0C0,  0xFF00,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x3FF0,  0xC000,  0xC000,  0xC000,  0xC000,  0xC000,  0x3FF0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0030,  0x0030,  0x0030,  0x0FF0,  0x3030,  0xC030,  0xC030,  0xC030,  0xC030,  0x3FF0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x3FC0,  0xC030,  0xC030,  0xFFF0,  0xC000,  0xC000,  0x3FF0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x03F0,  0x0C00,  0x0C00,  0xFFF0,  0x0C00,  0x0C00,  0x0C00,  0x0C00,  0x0C00,  0xFFF0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x3FF0,  0xC030,  0xC030,  0xC030,  0xC030,  0xC0F0,  0x3F30,  0x0030,  0x0030,  0x3FC0,},
    {  8, 0x0000,  0x0000,  0xC000,  0xC000,  0xC000,  0xCFC0,  0xF030,  0xC030,  0xC030,  0xC030,  0xC030,  0xC030,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0300,  0x0300,  0x0000,  0xFF00,  0x0300,  0x0300,  0x0300,  0x0300,  0x0300,  0xFFFC,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x00C0,  0x00C0,  0x0000,  0x3FC0,  0x00C0,  0x00C0,  0x00C0,  0x00C0,  0x00C0,  0x00C0,  0x00C0,  0x3F00,  0x0000,},
    {  8, 0x0000,  0x0000,  0xC000,  0xC000,  0xC000,  0xC0C0,  0xC300,  0xCC00,  0xFC00,  0xC300,  0xC0C0,  0xC0C0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0xFF00,  0x0300,  0x0300,  0x0300,  0x0300,  0x0300,  0x0300,  0x0300,  0x0300,  0xFFFC,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0xCCC0,  0xFF30,  0xCC30,  0xCC30,  0xCC30,  0xCC30,  0xCC30,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0xCFC0,  0xF030,  0xC030,  0xC030,  0xC030,  0xC030,  0xC030,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x3FC0,  0xC030,  0xC030,  0xC030,  0xC030,  0xC030,  0x3FC0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0xCF00,  0xF0C0,  0xC030,  0xC030,  0xC030,  0xC0C0,  0xFF00,  0xC000,  0xC000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x3FF0,  0xC030,  0xC030,  0xC030,  0xC030,  0xC030,  0x3FF0,  0x0030,  0x0030,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0xF0F0,  0x3300,  0x3C00,  0x3000,  0x3000,  0x3000,  0xFFC0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x3FC0,  0xC000,  0xC000,  0x3F00,  0x00C0,  0x00C0,  0xFF00,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0C00,  0xFFF0,  0x0C00,  0x0C00,  0x0C00,  0x0C00,  0x0C00,  0x03F0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0xC0C0,  0xC0C0,  0xC0C0,  0xC0C0,  0xC0C0,  0xC0C0,  0x3F30,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0xC030,  0xC030,  0x30C0,  0x30C0,  0x30C0,  0x0F00,  0x0F00,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0xC030,  0xCF30,  0xCF30,  0xCF30,  0x30C0,  0x30C0,  0x30C0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x3030,  0x3030,  0x0CC0,  0x0300,  0x0CC0,  0x3030,  0x3030,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0xC030,  0xC030,  0x3030,  0x3030,  0x0CC0,  0x0CC0,  0x0300,  0x0C00,  0x0C00,  0x3000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0xFFF0,  0x00C0,  0x0300,  0x0C00,  0x3000,  0xC000,  0xFFF0,  0x0000,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x00C0,  0x0300,  0x0300,  0x00C0,  0x00C0,  0x0300,  0x00C0,  0x00C0,  0x0300,  0x0300,  0x00C0,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0300,  0x0300,  0x0300,  0x0300,  0x0300,  0x0000,  0x0300,  0x0300,  0x0300,  0x0300,  0x0300,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0C00,  0x0300,  0x0300,  0x0C00,  0x0C00,  0x0300,  0x0C00,  0x0C00,  0x0300,  0x0300,  0x0C00,  0x0000,  0x0000,},
    {  8, 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x3C30,  0xC3C0,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,}
};

const font_t bpmono10 = {BPMONO10_BITS_PER_PIXEL, BPMONO10_WORDS_PER_LINE, BPMONO10_HEIGHT, BPMONO10_HEIGHT - (BPMONO10_HEIGHT >> 2), BPMONO10_FIRST_CHAR, BPMONO10_CHARS, BPMONO10_SPACE, bpmono10_data[0] };

