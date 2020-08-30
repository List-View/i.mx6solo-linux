#!/bin/bash

do_env(){
	export PATH=../u-boot-imx/tools:$PATH
	export CROSS_COMPILE=/root/data/work/riot-env/fsl-linaro-toolchain/bin/arm-fsl-linux-gnueabi-
	export ARCH=arm
}

do_make(){
	make uImage -j4
	cp arch/arm/boot/uImage ~/data/
}

case $1 in
	(make)
		do_make
		;;
	(env)
		do_env
		;;
	(*)
		echo "Command no found"
		;;
esac
