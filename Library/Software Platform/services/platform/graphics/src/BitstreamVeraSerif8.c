#include <stdint.h>
#include <graphics.h>
#include <font.h>

#define BITSTREAMVERASERIF8_SPACE          3
#define BITSTREAMVERASERIF8_FIRST_CHAR     33
#define BITSTREAMVERASERIF8_CHARS          94
#define BITSTREAMVERASERIF8_HEIGHT         13
#define BITSTREAMVERASERIF8_WORDS_PER_LINE 2
#define BITSTREAMVERASERIF8_BITS_PER_PIXEL 2

const uint16_t bitstreamveraserif8_data[BITSTREAMVERASERIF8_CHARS][BITSTREAMVERASERIF8_WORDS_PER_LINE * BITSTREAMVERASERIF8_HEIGHT + 1] =
{
    {  4, 0x0000, 0x0000,  0x0000, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0000, 0x0000,  0x0800, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  5, 0x0000, 0x0000,  0x0000, 0x0000,  0x3300, 0x0000,  0x3300, 0x0000,  0x3300, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  9, 0x0000, 0x0000,  0x0000, 0x0000,  0x0092, 0x0000,  0x00C5, 0x0000,  0x0FFF, 0xC000,  0x0148, 0x0000,  0x0208, 0x0000,  0x3FFF, 0x4000,  0x0614, 0x0000,  0x0520, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x0000, 0x0000,  0x0300, 0x0000,  0x1F90, 0x0000,  0x3330, 0x0000,  0x3700, 0x0000,  0x0B80, 0x0000,  0x0370, 0x0000,  0x3330, 0x0000,  0x1FD0, 0x0000,  0x0300, 0x0000,  0x0100, 0x0000,  0x0000, 0x0000,},
    { 10, 0x0000, 0x0000,  0x0000, 0x0000,  0x1F42, 0x0000,  0x30C9, 0x0000,  0x30C8, 0x0000,  0x1F64, 0x0000,  0x0067, 0xD000,  0x008C, 0x3000,  0x018C, 0x3000,  0x0207, 0xD000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    { 10, 0x0000, 0x0000,  0x0000, 0x0000,  0x07D0, 0x0000,  0x0C30, 0x0000,  0x0900, 0x0000,  0x174B, 0xC000,  0x20C2, 0x0000,  0x3025, 0x0000,  0x242C, 0x0000,  0x0BD7, 0xC000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  3, 0x0000, 0x0000,  0x0000, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  4, 0x0000, 0x0000,  0x0100, 0x0000,  0x0800, 0x0000,  0x1400, 0x0000,  0x2000, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,  0x2000, 0x0000,  0x1400, 0x0000,  0x0800, 0x0000,  0x0100, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  4, 0x0000, 0x0000,  0x4000, 0x0000,  0x2000, 0x0000,  0x1400, 0x0000,  0x0800, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0800, 0x0000,  0x1400, 0x0000,  0x2000, 0x0000,  0x4000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  6, 0x0000, 0x0000,  0x0000, 0x0000,  0x0C00, 0x0000,  0x4C40, 0x0000,  0x2E00, 0x0000,  0x4C40, 0x0000,  0x0C00, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  9, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x00C0, 0x0000,  0x00C0, 0x0000,  0x00C0, 0x0000,  0x3FFF, 0x0000,  0x00C0, 0x0000,  0x00C0, 0x0000,  0x00C0, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  4, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x3000, 0x0000,  0x2000, 0x0000,  0x4000, 0x0000,  0x0000, 0x0000,},
    {  4, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0xFC00, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  4, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x2000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  4, 0x0000, 0x0000,  0x0000, 0x0000,  0x0200, 0x0000,  0x0500, 0x0000,  0x0800, 0x0000,  0x0800, 0x0000,  0x1400, 0x0000,  0x2000, 0x0000,  0x2000, 0x0000,  0x5000, 0x0000,  0x8000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x0000, 0x0000,  0x07D0, 0x0000,  0x1824, 0x0000,  0x2008, 0x0000,  0x300C, 0x0000,  0x300C, 0x0000,  0x2008, 0x0000,  0x1824, 0x0000,  0x07D0, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x0000, 0x0000,  0x02C0, 0x0000,  0x09C0, 0x0000,  0x00C0, 0x0000,  0x00C0, 0x0000,  0x00C0, 0x0000,  0x00C0, 0x0000,  0x00C0, 0x0000,  0x0FFC, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x0000, 0x0000,  0x1B80, 0x0000,  0x3060, 0x0000,  0x0030, 0x0000,  0x0010, 0x0000,  0x0080, 0x0000,  0x0100, 0x0000,  0x0830, 0x0000,  0x3FF0, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x0000, 0x0000,  0x1B90, 0x0000,  0x3030, 0x0000,  0x0020, 0x0000,  0x0380, 0x0000,  0x0060, 0x0000,  0x0030, 0x0000,  0x3060, 0x0000,  0x1B80, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x0000, 0x0000,  0x0070, 0x0000,  0x01B0, 0x0000,  0x0330, 0x0000,  0x0830, 0x0000,  0x3FFC, 0x0000,  0x0030, 0x0000,  0x0030, 0x0000,  0x00FC, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x0000, 0x0000,  0x0FFC, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0EE0, 0x0000,  0x0D18, 0x0000,  0x000C, 0x0000,  0x0C18, 0x0000,  0x06E0, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x0000, 0x0000,  0x06E4, 0x0000,  0x181C, 0x0000,  0x2000, 0x0000,  0x37E0, 0x0000,  0x3418, 0x0000,  0x200C, 0x0000,  0x1418, 0x0000,  0x07E0, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x0000, 0x0000,  0x3FF0, 0x0000,  0x3050, 0x0000,  0x0090, 0x0000,  0x00C0, 0x0000,  0x0140, 0x0000,  0x0200, 0x0000,  0x0200, 0x0000,  0x0500, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x0000, 0x0000,  0x1BE4, 0x0000,  0x341C, 0x0000,  0x2418, 0x0000,  0x0BE0, 0x0000,  0x2418, 0x0000,  0x300C, 0x0000,  0x2418, 0x0000,  0x0BE0, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x0000, 0x0000,  0x0BD0, 0x0000,  0x2414, 0x0000,  0x3008, 0x0000,  0x241C, 0x0000,  0x0BDC, 0x0000,  0x0018, 0x0000,  0x3424, 0x0000,  0x1B90, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  4, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x2000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x2000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  4, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x2000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x3000, 0x0000,  0x2000, 0x0000,  0x4000, 0x0000,  0x0000, 0x0000,},
    {  9, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0006, 0x0000,  0x01A4, 0x0000,  0x1900, 0x0000,  0x1900, 0x0000,  0x01A4, 0x0000,  0x0006, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  9, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x3FFF, 0x0000,  0x0000, 0x0000,  0x3FFF, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  9, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x2400, 0x0000,  0x0690, 0x0000,  0x0019, 0x0000,  0x0019, 0x0000,  0x0690, 0x0000,  0x2400, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  6, 0x0000, 0x0000,  0x0000, 0x0000,  0x1B80, 0x0000,  0x3460, 0x0000,  0x0030, 0x0000,  0x0060, 0x0000,  0x0380, 0x0000,  0x0300, 0x0000,  0x0000, 0x0000,  0x0200, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    { 11, 0x0000, 0x0000,  0x0000, 0x0000,  0x00BE, 0x4000,  0x0640, 0x6000,  0x1800, 0x1400,  0x2477, 0x0C00,  0x30C3, 0x0C00,  0x30C3, 0x2400,  0x2477, 0x9000,  0x1800, 0x0000,  0x0640, 0x4000,  0x01BD, 0x0000,  0x0000, 0x0000,},
    {  8, 0x0000, 0x0000,  0x0000, 0x0000,  0x0140, 0x0000,  0x02C0, 0x0000,  0x0590, 0x0000,  0x0860, 0x0000,  0x0820, 0x0000,  0x1FF4, 0x0000,  0x2008, 0x0000,  0xFC1F, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  8, 0x0000, 0x0000,  0x0000, 0x0000,  0x3FF9, 0x0000,  0x0C07, 0x0000,  0x0C06, 0x0000,  0x0FFC, 0x0000,  0x0C06, 0x0000,  0x0C03, 0x0000,  0x0C06, 0x0000,  0x3FF8, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  8, 0x0000, 0x0000,  0x0000, 0x0000,  0x02F8, 0x0000,  0x0807, 0x0000,  0x2000, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,  0x2000, 0x0000,  0x0806, 0x0000,  0x02F4, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  9, 0x0000, 0x0000,  0x0000, 0x0000,  0x3FF4, 0x0000,  0x0C06, 0x0000,  0x0C01, 0x8000,  0x0C00, 0xC000,  0x0C00, 0xC000,  0x0C01, 0x8000,  0x0C06, 0x0000,  0x3FF4, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  8, 0x0000, 0x0000,  0x0000, 0x0000,  0x3FFF, 0x0000,  0x0C03, 0x0000,  0x0C00, 0x0000,  0x0FFC, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C03, 0x0000,  0x3FFF, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  8, 0x0000, 0x0000,  0x0000, 0x0000,  0x3FFF, 0x0000,  0x0C03, 0x0000,  0x0C00, 0x0000,  0x0FFC, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x3F00, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  8, 0x0000, 0x0000,  0x0000, 0x0000,  0x02F8, 0x0000,  0x0807, 0x0000,  0x2000, 0x0000,  0x3000, 0x0000,  0x303F, 0x0000,  0x2403, 0x0000,  0x0807, 0x0000,  0x06F8, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  9, 0x0000, 0x0000,  0x0000, 0x0000,  0x3F0F, 0xC000,  0x0C03, 0x0000,  0x0C03, 0x0000,  0x0FFF, 0x0000,  0x0C03, 0x0000,  0x0C03, 0x0000,  0x0C03, 0x0000,  0x3F0F, 0xC000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  4, 0x0000, 0x0000,  0x0000, 0x0000,  0x3F00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x3F00, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  4, 0x0000, 0x0000,  0x0000, 0x0000,  0x3F00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0800, 0x0000,  0xE400, 0x0000,  0x0000, 0x0000,},
    {  8, 0x0000, 0x0000,  0x0000, 0x0000,  0x3F0F, 0x0000,  0x0C18, 0x0000,  0x0C60, 0x0000,  0x0D80, 0x0000,  0x0D80, 0x0000,  0x0C70, 0x0000,  0x0C0D, 0x0000,  0x3F02, 0xC000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x0000, 0x0000,  0x3F00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C0C, 0x0000,  0x3FFC, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    { 11, 0x0000, 0x0000,  0x0000, 0x0000,  0x3E00, 0xBC00,  0x0E00, 0xB000,  0x0D81, 0x7000,  0x0C82, 0x3000,  0x0C55, 0x3000,  0x0C28, 0x3000,  0x0C00, 0x3000,  0x3F00, 0xFC00,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  9, 0x0000, 0x0000,  0x0000, 0x0000,  0x3C0F, 0xC000,  0x0E03, 0x0000,  0x0D83, 0x0000,  0x0C93, 0x0000,  0x0C23, 0x0000,  0x0C1B, 0x0000,  0x0C0B, 0x0000,  0x3F02, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  9, 0x0000, 0x0000,  0x0000, 0x0000,  0x02F8, 0x0000,  0x0D07, 0x0000,  0x2401, 0x8000,  0x3000, 0xC000,  0x3000, 0xC000,  0x2401, 0x8000,  0x0D07, 0x0000,  0x02F8, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x0000, 0x0000,  0x3FE0, 0x0000,  0x0C18, 0x0000,  0x0C0C, 0x0000,  0x0C18, 0x0000,  0x0FE0, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x3F00, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  9, 0x0000, 0x0000,  0x0000, 0x0000,  0x02F8, 0x0000,  0x0D07, 0x0000,  0x2401, 0x8000,  0x3000, 0xC000,  0x3000, 0xC000,  0x2401, 0x8000,  0x0D06, 0x0000,  0x02F8, 0x0000,  0x0014, 0x0000,  0x0007, 0x0000,  0x0000, 0x0000,},
    {  8, 0x0000, 0x0000,  0x0000, 0x0000,  0x3FF4, 0x0000,  0x0C18, 0x0000,  0x0C0C, 0x0000,  0x0C18, 0x0000,  0x0FE0, 0x0000,  0x0C24, 0x0000,  0x0C08, 0x0000,  0x3F07, 0x4000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x0000, 0x0000,  0x0BE0, 0x0000,  0x201C, 0x0000,  0x3000, 0x0000,  0x1E40, 0x0000,  0x0074, 0x0000,  0x000C, 0x0000,  0x3018, 0x0000,  0x1BE0, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  8, 0x0000, 0x0000,  0x0000, 0x0000,  0x3FFF, 0x0000,  0x30C3, 0x0000,  0x00C0, 0x0000,  0x00C0, 0x0000,  0x00C0, 0x0000,  0x00C0, 0x0000,  0x00C0, 0x0000,  0x03F0, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  9, 0x0000, 0x0000,  0x0000, 0x0000,  0x3F0F, 0xC000,  0x0C03, 0x0000,  0x0C03, 0x0000,  0x0C03, 0x0000,  0x0C03, 0x0000,  0x0C03, 0x0000,  0x0906, 0x0000,  0x02F8, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  8, 0x0000, 0x0000,  0x0000, 0x0000,  0xF82F, 0x0000,  0x3008, 0x0000,  0x2414, 0x0000,  0x1820, 0x0000,  0x0820, 0x0000,  0x0550, 0x0000,  0x0280, 0x0000,  0x0240, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    { 11, 0x0000, 0x0000,  0x0000, 0x0000,  0xF410, 0xBC00,  0x3030, 0x3000,  0x2474, 0x6000,  0x1498, 0x5000,  0x088C, 0x8000,  0x0945, 0x8000,  0x0747, 0x4000,  0x0303, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  9, 0x0000, 0x0000,  0x0000, 0x0000,  0x3F0F, 0xC000,  0x0505, 0x0000,  0x0248, 0x0000,  0x00A0, 0x0000,  0x00A0, 0x0000,  0x0208, 0x0000,  0x0506, 0x0000,  0x3F0F, 0xC000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  8, 0x0000, 0x0000,  0x0000, 0x0000,  0x3E2F, 0x0000,  0x0C08, 0x0000,  0x0620, 0x0000,  0x0290, 0x0000,  0x00C0, 0x0000,  0x00C0, 0x0000,  0x00C0, 0x0000,  0x03F0, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  8, 0x0000, 0x0000,  0x0000, 0x0000,  0x3FFE, 0x0000,  0x300C, 0x0000,  0x0034, 0x0000,  0x0090, 0x0000,  0x0180, 0x0000,  0x0600, 0x0000,  0x0C03, 0x0000,  0x2FFF, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  4, 0x0000, 0x0000,  0x3D00, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,  0x3D00, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  4, 0x0000, 0x0000,  0x0000, 0x0000,  0x8000, 0x0000,  0x5000, 0x0000,  0x2000, 0x0000,  0x2000, 0x0000,  0x1400, 0x0000,  0x0800, 0x0000,  0x0800, 0x0000,  0x0500, 0x0000,  0x0200, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  4, 0x0000, 0x0000,  0x3C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x3C00, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  9, 0x0000, 0x0000,  0x0000, 0x0000,  0x01D0, 0x0000,  0x0624, 0x0000,  0x1405, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  6, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0xFFF0, 0x0000,},
    {  6, 0x0000, 0x0000,  0x0400, 0x0000,  0x0100, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0B90, 0x0000,  0x0030, 0x0000,  0x1BF0, 0x0000,  0x3030, 0x0000,  0x3030, 0x0000,  0x1F7C, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x3C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0DE0, 0x0000,  0x0D18, 0x0000,  0x0C0C, 0x0000,  0x0C0C, 0x0000,  0x0D18, 0x0000,  0x3DE0, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  6, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0B90, 0x0000,  0x2470, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,  0x2460, 0x0000,  0x0B80, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x00F0, 0x0000,  0x0030, 0x0000,  0x0030, 0x0000,  0x0B70, 0x0000,  0x2470, 0x0000,  0x3030, 0x0000,  0x3030, 0x0000,  0x2470, 0x0000,  0x0B7C, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  6, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0B80, 0x0000,  0x2020, 0x0000,  0x3FF0, 0x0000,  0x3000, 0x0000,  0x2460, 0x0000,  0x0B80, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  4, 0x0000, 0x0000,  0x07C0, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x3F00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x3F00, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0B7C, 0x0000,  0x2470, 0x0000,  0x3030, 0x0000,  0x3030, 0x0000,  0x2470, 0x0000,  0x0B70, 0x0000,  0x3060, 0x0000,  0x1B80, 0x0000,  0x0000, 0x0000,},
    {  8, 0x0000, 0x0000,  0x3C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0DF4, 0x0000,  0x0D0C, 0x0000,  0x0C0C, 0x0000,  0x0C0C, 0x0000,  0x0C0C, 0x0000,  0x3F3F, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  4, 0x0000, 0x0000,  0x0000, 0x0000,  0x0800, 0x0000,  0x0000, 0x0000,  0x3C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x3F00, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  4, 0x0000, 0x0000,  0x0000, 0x0000,  0x0800, 0x0000,  0x0000, 0x0000,  0x3C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0xF400, 0x0000,  0x0000, 0x0000,},
    {  8, 0x0000, 0x0000,  0x3C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C3C, 0x0000,  0x0C24, 0x0000,  0x0CD0, 0x0000,  0x0E20, 0x0000,  0x0C1C, 0x0000,  0x3F2F, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  4, 0x0000, 0x0000,  0x3C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x3F00, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    { 10, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x3DD7, 0x4000,  0x0C30, 0xC000,  0x0C30, 0xC000,  0x0C30, 0xC000,  0x0C30, 0xC000,  0x3F3C, 0xF000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  8, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x3DF4, 0x0000,  0x0D0C, 0x0000,  0x0C0C, 0x0000,  0x0C0C, 0x0000,  0x0C0C, 0x0000,  0x3F3F, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  6, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0B80, 0x0000,  0x2460, 0x0000,  0x3030, 0x0000,  0x3030, 0x0000,  0x2460, 0x0000,  0x0B80, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x3DE0, 0x0000,  0x0D18, 0x0000,  0x0C0C, 0x0000,  0x0C0C, 0x0000,  0x0D18, 0x0000,  0x0DE0, 0x0000,  0x0C00, 0x0000,  0x3F00, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0B7C, 0x0000,  0x2470, 0x0000,  0x3030, 0x0000,  0x3030, 0x0000,  0x2470, 0x0000,  0x0B70, 0x0000,  0x0030, 0x0000,  0x00FC, 0x0000,  0x0000, 0x0000,},
    {  6, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x3DF0, 0x0000,  0x0C30, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x3F00, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  5, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x1F40, 0x0000,  0x30C0, 0x0000,  0x2900, 0x0000,  0x0180, 0x0000,  0x30C0, 0x0000,  0x1F40, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  5, 0x0000, 0x0000,  0x0000, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x3F00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0C00, 0x0000,  0x0CC0, 0x0000,  0x0740, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0xF0F0, 0x0000,  0x3030, 0x0000,  0x3030, 0x0000,  0x3030, 0x0000,  0x3070, 0x0000,  0x1F7C, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  6, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0xF8F0, 0x0000,  0x2080, 0x0000,  0x2080, 0x0000,  0x1540, 0x0000,  0x0A00, 0x0000,  0x0A00, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  9, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0xF8CB, 0xC000,  0x21D2, 0x0000,  0x2262, 0x0000,  0x1625, 0x0000,  0x0918, 0x0000,  0x0808, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  6, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0xF8F0, 0x0000,  0x2480, 0x0000,  0x0A00, 0x0000,  0x0A00, 0x0000,  0x2080, 0x0000,  0xF2F0, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  6, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0xF8F0, 0x0000,  0x2080, 0x0000,  0x2540, 0x0000,  0x1A00, 0x0000,  0x0A00, 0x0000,  0x0500, 0x0000,  0x0800, 0x0000,  0xF400, 0x0000,  0x0000, 0x0000,},
    {  6, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x3FE0, 0x0000,  0x30C0, 0x0000,  0x0240, 0x0000,  0x0600, 0x0000,  0x0C30, 0x0000,  0x3FF0, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x01D0, 0x0000,  0x0300, 0x0000,  0x0300, 0x0000,  0x0300, 0x0000,  0x0300, 0x0000,  0x2D00, 0x0000,  0x0200, 0x0000,  0x0300, 0x0000,  0x0300, 0x0000,  0x02D0, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  4, 0x0000, 0x0000,  0x0000, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,  0x3000, 0x0000,},
    {  7, 0x0000, 0x0000,  0x1D00, 0x0000,  0x0300, 0x0000,  0x0300, 0x0000,  0x0300, 0x0000,  0x0300, 0x0000,  0x01E0, 0x0000,  0x0200, 0x0000,  0x0300, 0x0000,  0x0300, 0x0000,  0x1E00, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,},
    {  9, 0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x1F41, 0x0000,  0x107D, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,  0x0000, 0x0000,}
};

const font_t bitstreamveraserif8 = {BITSTREAMVERASERIF8_BITS_PER_PIXEL, BITSTREAMVERASERIF8_WORDS_PER_LINE, BITSTREAMVERASERIF8_HEIGHT, BITSTREAMVERASERIF8_HEIGHT - (BITSTREAMVERASERIF8_HEIGHT >> 2), BITSTREAMVERASERIF8_FIRST_CHAR, BITSTREAMVERASERIF8_CHARS, BITSTREAMVERASERIF8_SPACE, bitstreamveraserif8_data[0] };

