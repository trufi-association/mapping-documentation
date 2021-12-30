# Installing JOSM on linux

Overview of the various method of installing JOSM on graphical linux operating systems e.g. debian based linux distributions like Ubuntu, Kubuntu and Debian itself or on any non-debian OS having Flatpak.

**Use software centers and other graphical user interfaces as much as possible to do yourself a favour and only use the terminal/konsole if it's easier for faster to work with.**

## 1. Method: Install using Flatpak (recommended)

[Installing using Flatpak](https://flathub.org/apps/details/org.openstreetmap.josm) (external link) is our recommended installation method which is equal across most linux variants. Execute the command

```bash
flatpak install app/org.openstreetmap.josm/x86_64/stable -y
```

or use flatpaks' auto resolving functionality:

```bash
flatpak install josm
```

Alternatively you can use your software center if it's set up for Flatpak.

**Flatpak needs to be installed on your system for this to work. We recommend all JOSM users to install using this method because this is the smartest, safiest and easiest way of installing applications on Linux. So consider installing and setting up Flatpak if you don't already have.**

## 2. Method: Using our bash script

1. Install using our own script we wrote with support of some linux systems which you can download [here](https://trufi-association.org/installJOSM.sh) (external link to our website).
2. Save it somewhere on your disk e.g. *Downloads* folder.
3. Flag is as an executable (right click on file --> *Properties* --> *Permissions* --> check *make it executable* or similiar)
4. Execute it as the superuser (*root* user) in a terminal because your attention is needed.
4. After successfull execution you can remove that script.

## 3. Method: Using package management system (not recommended)

**Open a terminal/konsole and execute all following commands as root**. Our bash install script runs these commands automatically after detecting the appropriate available installation method on the system.

### Ubuntu, Debian and derivatives

Register the official JOSM repository

```bash
echo "deb https://josm.openstreetmap.de/apt alldist universe" > /etc/apt/sources.list.d/josm.list
```
   
and then its public key<br/>
using `wget`

```bash
wget -q https://josm.openstreetmap.de/josm-apt.key -O- > /etc/apt/trusted.gpg.d/josm.gpg
```

or using `curl`

```bash
curl https://josm.openstreetmap.de/josm-apt.key > /etc/apt/trusted.gpg.d/josm.gpg
```

Before attempting to install refresh the sources

```bash
sudo apt update
```

to be able to finally install JOSM

```bash
sudo apt install josm
```

### OpenSUSE

Grab the version

```bash
version=`cat /etc/os-release | grep "VERSION_ID"`
version=${version/VERSION_ID=/}
version=${version//\"/}
```

and add the 'Geo' depot

```bash
zypper ar -f https://download.opensuse.org/repositories/Application:/Geo/openSUSE_Leap_${version} Application:Geo
```

in order to be able to install JOSM using

```bash
zypper install josm josm-fonts
```

### Debian

**Use this only when the steps in "Ubuntu, Debian and derivatives" don't work for you.**

Get codename of your debian installation first

```bash
codename=`cat /etc/os-release | grep "VERSION_CODENAME"`
codename=${codename/VERSION_CODENAME=/}
codename=${codename//\"/}
```

to be able to add the right backports repository

```bash
echo "deb http://deb.debian.org/debian ${codename}-backports main" > /etc/apt/sources.list.d/backports.list
```

Before attempting to install refresh the sources

```bash
apt update
```

and now finally install JOSM from backports

```bash
apt install josm/${codename}-backports
```

## 4. Method: Use .jar version of JOSM (not recommended)

Execute JOSM on linux using its `.jar`. But you need to install Java if you don't have already. We wrote a tutorial you can find [here](./linux-java-jar.md) showing how to install Java and how to use a `.jar` file in general.

