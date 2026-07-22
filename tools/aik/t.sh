#!/bin/bash

aik="${BASH_SOURCE:-$0}"
aik="$(dirname "$(readlink -f "$aik")")"

input_files=("$aik"/ramdisk/fstab.*)

sudo sed -i 's/erofs/ext4/g' "${input_files[@]}"
