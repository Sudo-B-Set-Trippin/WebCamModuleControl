#!/bin/bash

if [[ ${UID} != 0 ]]
then
	echo -e "Run The Script As Root, Are Your Drunk Dude ?"
else
	echo
	echo -e "################################################################"
	echo -e "###################### WebCamModuleControl #####################"
	echo -e "### Remove or Blacklist WebCam Module From Arch Linux Kernel ###"
	echo -e "#################### Coder : BL4CKH47H4CK3R ####################"
	echo -e "################################################################"
	echo
	echo [1] Remove WebCam Module
	echo [2] Blacklist WebCam Module
	echo [3] Fix WebCam Module
	echo
	read -p "Enter Choice [1 or 2 or 3]: " confirm
	
	if [[ ${confirm} == 1 ]]
	then
		echo -e "\nRemoving Module From The Kernel ..."
		rmmod uvcvideo
		rm -rf /lib/modules/$(uname -r)/kernel/drivers/media/usb/uvc/uvcvideo.ko.xz
		echo -e "Enjoy Superior Privacy !\nRemoving Module Done !\n"
		echo -e "Please Reboot Your System To Take Effect !\n"
	
	elif [[ ${confirm} == 2 ]]
	then
		echo -e "\nBlacklisting Module From The Kernel ..."
		echo -e "uvcvideo" >> /etc/modprobe.d/blacklist.conf
		echo -e "Enjoy Superior Privacy !\nBlacklisting Module Done !\n"
		echo -e "Please Reboot Your System To Take Effect !\n"
	
	elif [[ ${confirm} == 3 ]]
	then
		echo -e "\n[1] Linux [Default]"
		echo -e "[2] Linux [LTS]"
		echo -e "[3] Linux [ZEN]"
		echo -e "[4] Linux [HARDENED]\n"
		read -p "Enter Choice [1 or 2 or 3 or 4]: " confirm
		
		if [[ ${confirm} == 1 ]]
		then
		       	echo -e "\nReinstalling Specified Kernel & Fixing WebCam Module ...\n"
			rm -rf /etc/modprobe.d/blacklist.conf
			pacman -S linux --noconfirm
			echo -e "\nEnjoy Superior Privacy !\nRemoving Module Done !\n"
			echo -e "Please Reboot Your System To Take Effect !\n"
		
		elif [[ ${confirm} == 2 ]]
		then
			echo -e "\nReinstalling Specified Kernel & Fixing WebCam Module ...\n"
			rm -rf /etc/modprobe.d/blacklist.conf
			pacman -S linux-lts --noconfirm
			echo -e "\nEnjoy Superior Privacy !\nRemoving Module Done !\n"
			echo -e "Please Reboot Your System To Take Effect !\n"
		
		elif [[ ${confirm} == 3 ]]
		then
			echo -e "\nReinstalling Specified Kernel & Fixing WebCam Module ...\n"
			rm -rf /etc/modprobe.d/blacklist.conf
			pacman -S linux-zen --noconfirm
			echo -e "Enjoy Superior Privacy !\nRemoving Module Done !\n"
			echo -e "Please Reboot Your System To Take Effect !\n"
		
		elif [[ ${confirm} == 4 ]]
		then
			echo -e "\nReinstalling Specified Kernel & Fixing WebCam Module ...\n"
			rm -rf /etc/modprobe.d/blacklist.conf
			pacman -S linux-hardened --noconfirm
			echo -e "Enjoy Superior Privacy !\nRemoving Module Done !\n"
			echo -e "Please Reboot Your System To Take Effect !\n"
		
		else
			echo -e "\nWrong Input, Are You Drunk Dude ?\n"
		fi
	else
		echo "\nWrong Input, Are You Drunk Dude ?\n"
	fi
fi
