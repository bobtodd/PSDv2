# PSDv2

A repository following the Phylogenetic Software Development Tutorial (version 2) by the Paul O. Lewis Laboratory at UConn

## Background

This is a sandbox for trying to build a phylogenetics program from the ground up.  It follows the [Phylogenetic Software Development Tutorial (version 2)](https://phylogeny.uconn.edu/phylogenetic-software-development-tutorial-v2/) found at the website of the [Paul O. Lewis Laboratory](https://phylogeny.uconn.edu/) at UConn.

## Setup Notes

I'll be working with macOS, so my setup notes will depend on that environment.  In particular, I'm using [Homebrew](https://brew.sh/) to install compilers and C++11 libraries.  This tutorial uses the [Boost](http://www.boost.org/) C++ libraries.  I'll install those with Homebrew as well.  According to [this (old) thread](https://stackoverflow.com/questions/18139710/using-c11-in-macos-x-and-compiled-boost-libraries-conundrum), they need to be installed using the command

```
brew install boost --c++11
```

in order to use many of the features of C++11.  In general that post notes that for macOS libraries must be compiled using `-stdlib=libc++`.  (See [this issue](https://github.com/Homebrew/brew/issues/139) for other issues that might arise for Boost installation, as well as [this other discussion](https://github.com/Homebrew/legacy-homebrew/issues/25986).)
