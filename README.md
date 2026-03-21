# Template C++ Project for Competitive Programming

## Environment

* WSL Ubuntu
* `make`
* `clangd` for LSP
* `clang-format`

## Environment Commands

These commands are Windows-specific.
You might want to replace these commands like `xclip`, `pbcopy`, or `pbpaste`.

* `pwsh.exe`
    * Defined in `make run`
    * Used to paste the content of the clipboard.
* `clip.exe`
    * Defined in `make co`
    * Used to copy the content of `main.cc` to the clipboard.

## Usage

### Write Code

The starting point is the `void solve(void)` function in `main.cc`.

### `make` Commands

#### `make`

Builds `main.cc`.
Output binary will be `a.exe`.

#### `make run`

Reads the content of the clipboard and runs `a.exe`.
The content of the clipboard is passed to `a.exe` as input.

#### `make co`

Copies the content of `main.cc` to the clipboard.

#### `make new`

Creates a new `main.cc` file and writes the template code into it.
Old `main.cc` will be backed up to `tmp/main.cc.bak`.

#### `make clean`

Removes `a.exe`.
The backup file `tmp/main.cc.bak` will not be removed.

## Modification

### Change Compiler

* Change `CC` in `Makefile`.

Example:

```diff
# Makefile
- CC = g++
+ CC = clang++
```

### Change Compile Flags

For C++ version, optimization level, etc.

* Change `CFLAGS` in `Makefile`.
* Add lines to `compile_flags.txt` for clangd LSP functionality.

Example:

```diff
# Makefile
- CFLAGS = -Wall -Wextra
+ CFLAGS = -Wall -Wextra -std=gnu++23 -O2
```

```diff
# compile_flags.txt
  -Wall
  -Wextra
+ -std=gnu++23
```

### Add Libraries

* Add include paths to `INCDIR` with `-I` prefix in `Makefile`.
* Add lines to `compile_flags.txt` for clangd LSP functionality.

Example:

```diff
# Makefile
- INCDIR =
+ INCDIR = -I/usr/local/include/ac-library
```

```diff
# compile_flags.txt
  -Wall
  -Wextra
+ -I/usr/local/include/ac-library
```
