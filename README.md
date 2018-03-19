# PSDv2

A repository following the Phylogenetic Software Development Tutorial (version 2) by the Paul O. Lewis Laboratory at UConn

## Background

This is a sandbox for trying to build a phylogenetics program from the ground up.  It follows the [Phylogenetic Software Development Tutorial (version 2)](https://phylogeny.uconn.edu/phylogenetic-software-development-tutorial-v2/) found at the website of the [Paul O. Lewis Laboratory](https://phylogeny.uconn.edu/) at UConn.

## Setup Notes

I'll be working with macOS, so my setup notes will depend on that environment.  In particular, I'm using [Homebrew](https://brew.sh/) to install compilers and C++11 libraries.

### Boost Library

This tutorial uses the [Boost](http://www.boost.org/) C++ libraries.  I'll install those with Homebrew as well.  According to [this (old) thread](https://stackoverflow.com/questions/18139710/using-c11-in-macos-x-and-compiled-boost-libraries-conundrum), they need to be installed using the command

```
brew install boost --c++11
```

in order to use many of the features of C++11.  In general that post notes that for macOS libraries must be compiled using `-stdlib=libc++`.  (See [this issue](https://github.com/Homebrew/brew/issues/139) for other issues that might arise for Boost installation, as well as [this other discussion](https://github.com/Homebrew/legacy-homebrew/issues/25986).)

As a reference for Make, see [this short tutorial](http://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/).

### BEAGLE Library

Installation instructions for the [BEAGLE](https://github.com/beagle-dev/beagle-lib) library on macOS can be found [here](https://github.com/beagle-dev/beagle-lib/wiki/MacInstallInstructions).  But I'm a little more enthusiastic about [trying it with Homebrew](https://github.com/Homebrew/homebrew-science/blob/master/beagle.rb) (see also [here](http://braumeister.org/repos/Homebrew/homebrew-science/formula/beagle)).

```
brew install beagle # also installs doxygen
```

Using the recommendations of [this StackOverflow thread](https://stackoverflow.com/questions/34340578/installing-c-libraries-on-os-x), we can write

```
pkg-config --cflags hmsbeagle-1
```

to get the location of the header (i.e. include) files, and

```
pkg-config --libs hmsbeagle-1
```

to get the information for the linker.  We can then try compiling using the combined command

```
g++ $(pkg-config --cflags --libs hmsbeagle-1) main.cpp -o test
```

To invoke the library within a program, add the following line:

```c++
#include "libhmsbeagle/beagle.h"
```

as we can see from the `tinytest.cpp` file in the [`beagle-lib` GitHub repo](https://github.com/beagle-dev/beagle-lib/blob/master/examples/tinytest/tinytest.cpp).

### Nexus Class Library

The [Nexus Class Library](https://phylogeny.uconn.edu/tutorial-v2/part-1-ide-project-v2/setting-up-the-ncl-library-v2/) ([NCL](https://phylogeny.uconn.edu/tutorial-v2/part-1-ide-project-v2/setting-up-the-ncl-library-v2/)) has no Homebrew formula, so this one needs to be downloaded from the [SourceForge site](https://sourceforge.net/projects/ncl/) and installed by hand.

The tutorial recommends putting the zip file in a folder `Documents/libraries/`, unzipping, and then using the following procedure:


> 1. Open a console window and navigate into `Documents/libraries/ncl-2.1.18`
> 2. Type `./configure --prefix=$HOME`
> 3. Type `make`
> 4. Type `make install`


But I'm not sure that's exactly what I'd like to do.