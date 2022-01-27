/*
 * Copyright (c) 2020 Bitdefender
 * SPDX-License-Identifier: Apache-2.0
 */
#ifndef _LIXAPI_H_
#define _LIXAPI_H_

#include "introtypes.h"

INTSTATUS
IntLixApiHookAll(
    void
    );

void
IntLixApiUpdateHooks(
    void
    );

INTSTATUS
IntLixWriteHandler(
    _In_ void *Detour
    );

INTSTATUS
IntLixOpenHandler(
    _In_ void *Detour
    );
#endif // _LIXAPI_H_
