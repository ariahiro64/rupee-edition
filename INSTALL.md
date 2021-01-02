# Instructions

These instructions explain how to set up the tools required to build **ariacrystal**, including [**rgbds**](https://github.com/rednex/rgbds), which assembles the source files into a ROM.

If you run into trouble, ask for help on IRC or Discord (see [README.md](README.md)).


## Windows 10

Download and install [**Windows Subsystem for Linux**](https://docs.microsoft.com/en-us/windows/wsl/install-win10). Then open the **WSL terminal**.

WSL has its own file system that's not accessible from Windows, but Windows files *are* accessible from WSL. So you're going to want to install ariacrystal within Windows. You'll have to change the **current working directory** every time you open WSL.

For example, if you want to store ariacrystal in **C:\Users\\*\<user>*\Desktop**, enter this command:

```bash
cd /mnt/c/Users/<user>/Desktop
```

(The Windows `C:\` drive is called `/mnt/c/` in WSL. Replace *\<user>* in the example path with your username.)

Then follow [the instructions for **Linux**](#linux).

If this doesn't work, try following [the regular Windows instructions](#windows) below.


## Windows

Download [**Msys2**](https://www.msys2.org/): **setup-x86_64.exe** for 64-bit Windows, **setup-x86.exe** for 32-bit.

Run setup and leave the default settings.Follow the instructions on their page.after thats done run the following commands.
```bash
pacman -S pkg-config flex bison make git gcc-core
```
Then download [**rgbds**](https://github.com/rednex/rgbds/releases/): the latest **win64.zip** or **win32.zip** release. Extract it and put all the `exe` and `dll` files individually in **C:\msys64\usr\bin**.

**Note: If you already have an older rgbds, you will need to update to 0.3.9.** Ignore this if you have never installed rgbds before. If a version newer than 0.3.9 does not work, try downloading 0.3.9.

now cd to you Pokemon Rupee Version Folder [**cd /c/users/*your home folder/ect**] its not hard if you used dos ever in your life.

Cygwin is outdated but most of this applies.


## Mac OS X

Install [**Homebrew**](https://brew.sh/). Follow the official instructions.

Open **Terminal** and enter the following commands.

To install **rgbds**:

```bash
brew install rgbds
```

Now you're ready to [build **ariacrystal**](#build-ariacrystal).


## Linux and WSL **my perfered**

Open **Terminal** and enter the following commands, depending on which distro you're using.

### Debian or Ubuntu

To install the software required for **ariacrystal**:

```bash
sudo apt-get install make gcc git
```

To install **rgbds**:

```bash
sudo apt-get install pkg-config flex bison libpng-dev
git clone -b v0.4.0 --depth=1 https://github.com/rednex/rgbds
sudo make -C rgbds install
```

### OpenSUSE

To install the software required for **ariacrystal**:

```bash
sudo zypper install make gcc git
```

To install **rgbds**:

```bash
sudo zypper install pkg-config flex bison libpng16-devel
git clone -b v0.4.0 --depth=1 https://github.com/rednex/rgbds
sudo make -C rgbds install
```

### Arch Linux

To install the software required for **ariacrystal**:

```bash
sudo pacman -S make gcc git
```

**rgbds** is available on the [AUR](https://aur.archlinux.org/packages/rgbds/).

Alternatively, to install **rgbds** manually:

```bash
sudo pacman -S pkg-config flex bison libpng
git clone -b v0.4.0 --depth=1 https://github.com/rednex/rgbds
sudo make -C rgbds install
```

### Termux

To install the software required for **ariacrystal**:

```bash
sudo apt install make clang git sed
```

To install **rgbds**:

```bash
sudo apt install rgbds
```

### Other distros

If your distro is not listed here, try to find the required software in its repositories:

- `make`
- `gcc` (or `clang`)
- `git`
- `rgbds`

If `rgbds` is not available, you'll also need these:

- `pkg-config`
- `flex`
- `bison`
- `libpng` (and the development headers)

To install **rgbds**:

```bash
git clone -b v0.4.0 --depth=1 https://github.com/rednex/rgbds
sudo make -C rgbds install
```

Now you're ready to [build **ariacrystal**](#build-ariacrystal).


## Build ariacrystal

To download the **ariacrystal** source files:

```bash
git clone https://github.com/ariahiro64/link-aria-incrystal
cd ariacrystal
```

To build **all**:

```bash
make
```

To build **ariacrystal11**:

```bash
make ariacrystal11
```

all possible files:
```bash
ariacrystal ariacrystal11 ariacrystalAU
```