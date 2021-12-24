# Installing JOSM on linux

Overview of the various method of installing JOSM on graphical linux operating systems e.g. debian based linux distributions like Ubuntu, Kubuntu and Debian itself or on any non-debian OS having Flatpak.

**Use software centers and other graphical user interfaces as much as possible to do yourself a favour and only use the terminal/konsole if it's easier for faster to work with.**

## 1. Method: Install using Flatpak (recommended)

[Installing using Flatpak](https://flathub.org/apps/details/org.openstreetmap.josm) (external link) is our recommended installation method which is equal across most linux variants. But you can also use the graphical software center installed or via the command

```bash
flatpak install app/org.openstreetmap.josm/x86_64/stable -y
```

or use flatpaks' auto resolving functionality:

```bash
flatpak install josm
```

**Flatpak needs to be installed on your system for this to work. We recommend all JOSM users to install using this method because this is the smartest, safiest and easiest way of installing applications on Linux. So consider installing and setting up Flatpak if you don't already have.**

## 2. Method: Using our bash script (Debian systems only)

1. Install using our own script we wrote for Debian systems which you can download [here](./installJOSM.sh).
2. Save it somewhere on your disk e.g. *Downloads* folder.
3. Flag is as an executable (right click on file --> *Properties* --> *Permissions* --> check *make it executable* or similiar)
4. Execute it as the superuser (*root* user).

## 3. Method: Using package management system (not recommended)

The old-fashioned more complicated not recommended way of installing JOSM on linux is described [here](./linux-konsole.md). This tutorial makes extensive use of the terminal/konsole.

1. **Open a terminal and execute all following commands as root**

### Debian and Ubuntu like systems

*using APT* as package management system.

1. Register the official JOSM repository

   ```bash
   echo "deb https://josm.openstreetmap.de/apt alldist universe" > /etc/apt/sources.list.d/josm.list
   ```
   
2. Register the public key of that repository
   using `wget`

   ```bash
   wget -q https://josm.openstreetmap.de/josm-apt.key -O- | sudo apt-key add -
   ```

   or using `curl`

   ```bash
   curl https://josm.openstreetmap.de/josm-apt.key | apt-key add
   ```

3. Refresh the sources

   ```bash
   sudo apt update
   ```

4. Install JOSM

   ```bash
   sudo apt install josm
   ```

### OpenSUSE

1. Grab the version

   ```bash
   version=`cat /etc/os-release | grep "VERSION_ID"`
   version=${version/VERSION_ID=/}
   version=${version//\"/}
   ```

2. Add Geo repository

   ```bash
   zypper ar -f https://download.opensuse.org/repositories/Application:/Geo/openSUSE_Leap_$version Application:Geo
   ```

3. Install JOSM

   ```bash
   zypper install josm
   ```

   