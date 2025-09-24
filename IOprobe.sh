#!/usr/bin/env bash
# concise peripheral detector with spacing
G='\e[32m';C='\e[36m';Y='\e[33m';M='\e[35m';B='\e[34m';R='\e[31m';Z='\e[0m'
cmd(){ command -v "$1" >/dev/null 2>&1; }

printf "%b\n" "Peripherals on $(hostname) — $(date '+%Y-%m-%d %H:%M')"

cmd lsusb && { echo; printf "%b\n" "${G}[USB]${Z}"; lsusb; }
cmd lspci && { echo; printf "%b\n" "${C}[PCI]${Z}"; lspci -vmmn || lspci; }
cmd lsblk && { echo; printf "%b\n" "${Y}[BLOCK]${Z}"; lsblk -o NAME,MODEL,SIZE,TYPE -e 7 | sed 's/^/  /'; }
cmd ip && { echo; printf "%b\n" "${M}[NET]${Z}"; ip -brief link show | sed 's/^/  /'; }
cmd xinput && { echo; printf "%b\n" "${B}[INPUT]${Z}"; xinput --list | sed 's/^/  /'; }

echo
printf "%b\n" "${R}[TTY / SERIAL]${Z}"
{ ls /dev/ttyUSB* /dev/ttyACM* /dev/ttyS* 2>/dev/null || true; } | sed 's/^/  /'

echo
printf "%b\n" "${C}[DEV INPUT]${Z}"
ls /dev/input/by-id 2>/dev/null | sed 's/^/  /' || true

echo
