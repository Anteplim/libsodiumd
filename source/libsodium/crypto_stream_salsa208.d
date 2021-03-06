/*******************************************************************************

    D language bindings for libsodium's crypto_stream_salsa208.h

    License: ISC (see LICENSE.txt)

*******************************************************************************/

module libsodium.crypto_stream_salsa208;

@nogc nothrow:

import libsodium.export_;

extern (C):

/*
 *  WARNING: This is just a stream cipher. It is NOT authenticated encryption.
 *  While it provides some protection against eavesdropping, it does NOT
 *  provide any security against active attacks.
 *  Unless you know what you're doing, what you are looking for is probably
 *  the crypto_box functions.
 */

enum crypto_stream_salsa208_KEYBYTES = 32U;
size_t crypto_stream_salsa208_keybytes ();

enum crypto_stream_salsa208_NONCEBYTES = 8U;
size_t crypto_stream_salsa208_noncebytes ();

enum crypto_stream_salsa208_MESSAGEBYTES_MAX = SODIUM_SIZE_MAX;
size_t crypto_stream_salsa208_messagebytes_max ();

int crypto_stream_salsa208 (
    ubyte* c,
    ulong clen,
    const(ubyte)* n,
    const(ubyte)* k);

int crypto_stream_salsa208_xor (
    ubyte* c,
    const(ubyte)* m,
    ulong mlen,
    const(ubyte)* n,
    const(ubyte)* k);

void crypto_stream_salsa208_keygen (
    ref ubyte[crypto_stream_salsa208_KEYBYTES] k);
