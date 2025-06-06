#!/usr/bin/env -S bash ../.port_include.sh
port='gmp'
version='6.3.0'
useconfigure='true'
configopts=(
   # C20+ does not allow incomplete prototypes, which gmp implicitly uses
   "CFLAGS=-O2 -pedantic -std=c11"
)
files=(
    "https://ftpmirror.gnu.org/gnu/gmp/gmp-${version}.tar.xz#a3c2b80201b89e68616f4ad30bc66aee4927c3ce50e33929ca819d5c43538898"
)
