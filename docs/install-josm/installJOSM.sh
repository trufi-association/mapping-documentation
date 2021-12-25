#!/bin/bash

use_flatpak() {
	echo -e "\033[0;33mInstalling JOSM via Flatpak ...\033[0;m"
	flatpak install app/org.openstreetmap.josm/x86_64/stable -y
}

use_apt() {
	echo -e "\033[0;33mInstalling JOSM via APT...\033[0;m"
# 	if [ -z $(which java) ];
# 	then
# 		echo -e "\033[0;31mJava not installed!\033[0;m"
# 		echo -e "\033[0;33mInstalling recommended version JRE (Java Runtime Environment) 8.0 ...\033[0;m"
# 		apt install openjdk-8-jre -y
# 	fi
	
	echo -e "\033[0;33mAdding official JOSM repository to your system ...\033[0;m"
	echo "deb https://josm.openstreetmap.de/apt alldist universe" > /etc/apt/sources.list.d/josm.list
	
	echo -e "\033[0;33mAdding security key of official JOSM repository to your system ...\033[0;m"
	if ! [ -z $(which wget) ];
	then
		wget -q -O "-" https://josm.openstreetmap.de/josm-apt.key | apt-key add -
	elif ! [ -z $(which curl) ];
	then
		curl https://josm.openstreetmap.de/josm-apt.key | apt-key add
	fi
	
	echo -e "\033[0;33mUpdating software list ...\033[0;m"
	apt update

	echo -e "\033[0;33mInstalling JOSM on your system ...\033[0;m"
	# install josm-tested
	apt install josm -y
}

use_zypper() {
	echo -e "\033[0;33mInstalling JOSM via Zypper (OpenSuse)...\033[0;m"
	
	echo -e "\033[0;33mGet version of OpenSuse...\033[0;m"
	local version=`cat /etc/os-release | grep "VERSION_ID"`
	version=${version/VERSION_ID=/}
	version=${version//\"/}
	
	echo -e "\033[0;33mAdd depot 'Geo' which hosts applications working with spatial data...\033[0;m"
	zypper ar -f https://download.opensuse.org/repositories/Application:/Geo/openSUSE_Leap_${version} Application:Geo
	
	echo -e "\033[0;33mInstalling JOSM...\033[0;m"
	zypper in josm josm-fonts


}

if ! [ -z $(which flatpak) ];
then
	use_flatpak # best choice
elif ! [ -z $(which brew) ];
then
	echo -e "\033[0;33mInstalling JOSM via Homebrew...\033[0;m"
	brew install --cask josm # best choice for Apple users
elif ! [ -z $(which apt) ];
then
	use_apt
elif ! [ -z $(which zypper) ];
then
	use_zypper
fi;
