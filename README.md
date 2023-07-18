# Betty For Termux

[![Build Status](https://travis-ci.org/holbertonschool/Betty.svg?branch=master)](https://travis-ci.org/holbertonschool/Betty)

### Installation
Clone the repo to your device ``` git clone https://github.com/codelikesuraj/betty-for-termux```

cd into the cloned repo ``` cd betty-for-termux```

Run the installation script (**ROOT PRIVILEGE IS NOT REQUIRED**) ``` ./install.sh ``` to install betty and the following manuals.
 * _betty(1)_
 * _betty-style(1)_
 * _betty-doc(1)_

This also installs the termux 'perl' package (or you can do that manually with ```pkg install perl```.

### Usage

Run the following command to check if your code/doc fits the Betty Style (mostly inspired from the Linux Kernel style):

```ShellSession
betty file1 [file2 [file3 [...]]]
```

```ShellSession
betty-style file1 [file2 [file3 [...]]]
```

```ShellSession
betty-doc file1 [file2 [file3 [...]]]
```

### Documentation

Please visit the [Betty Wiki](https://github.com/holbertonschool/Betty/wiki) for the full specifications of Betty coding and documentation styles.

You'll also find some references and some tools for common text editors such as Emacs and Atom.
