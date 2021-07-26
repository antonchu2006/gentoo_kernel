#!/bin/bash
cd /usr/src/linux
echo "[*] Compilando el kernel de linux..."
make -j8 && make -j8 modules modules_install install
echo "[*] Generando una initramfs..."
genkernel --install --kernel-config=/usr/src/linux/.config initramfs

