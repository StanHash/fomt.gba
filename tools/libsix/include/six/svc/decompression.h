/*
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 */

#ifndef _LIBSIX_SVC_DECOMPRESSION_H
#define _LIBSIX_SVC_DECOMPRESSION_H

#include <six/base.h>

_LIBSIX_EXTERN_C

struct BitUnPackParam
{
    u16 src_length;     // in bytes
    u8  src_width;      // width of each src element (1, 2, 4, 8)
    u8  dst_width;      // width of each dst element (1, 2, 4, 8, 16, 32)
    u32 offset:31;      // value to add to each dst element
    u32 keep_zeroes:1;  // whether to add offset to zero elements too
};

extern void SvcBitUnPack(
        const void *src,
        void *dst,
        const struct BitUnPackParam *param);

extern void SvcLZ77UnCompWram(const void *src, void *dst);
extern void SvcLZ77UnCompVram(const void *src, void *dst);
extern void SvcHuffUnComp(const void *src, void *dst);
extern void SvcRLUnCompWram(const void *src, void *dst);
extern void SvcRLUnCompVram(const void *src, void *dst);
extern void SvcDiff8bitUnFilterWram(const void *src, void *dst);
extern void SvcDiff8bitUnFilterVram(const void *src, void *dst);
extern void SvcDiff16bitUnFilter(const void *src, void *dst);

_LIBSIX_EXTERN_C_END

#endif /* !_LIBSIX_SVC_DECOMPRESSION_H */
