﻿/*--------------------------------------------------------------------------------*
  Copyright (C)Nintendo. All rights reserved.

  These coded instructions, statements, and computer programs contain
  information of Nintendo and/or its licensed developers and are protected
  by national and international copyright laws.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
  OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
  CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
  TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
  SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *--------------------------------------------------------------------------------*/

#include "rocrt.AssemblyOffset.h"

    .section ".rocrt_nro.init", "a"
    .align  2
    .hidden __bss_start
    .hidden __bss_end
    .hidden __exidx_start
    .hidden __exidx_end
    .hidden _ZN2nn5rocrt10g_RoModuleE
    .global __rocrt
    .hidden __rocrt
1:  .word   0
    .word   __rocrt - 1b

    .section ".rocrt_nro.info", "a"
__rocrt:
    .word   NN_ROCRT_MODULE_HEADER_VERSION
    .word   _DYNAMIC - __rocrt
    .word   __bss_start - __rocrt
    .word   __bss_end - __rocrt
    .word   __exidx_start - __rocrt
    .word   __exidx_end - __rocrt
    .word   _ZN2nn5rocrt10g_RoModuleE - __rocrt

    .section ".bss"
    .align  2
_ZN2nn5rocrt10g_RoModuleE:
    .skip   NN_ROCRT_ROMODULE_SIZE 

