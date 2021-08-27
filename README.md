# bedd: The weird editor
NOTE: This editor is not meant to be used by anyone other than me, @segfaultdev, as this is a project adapted to my usage and needs, so please don't submit any pull requests changing core functionality(specially the python and Java checks), and instead create your own fork. If you do so, please let me know so I can add a link to it below!

bedd is a tiny tab-based terminal text editor with mouse support, syntax highlighting, indentation and other features.

![(screenshot of bedd)](https://raw.githubusercontent.com/segfaultdev/bedd/master/image.png)

## Features

- Simple and familiar keybindings(Ctrl+C for copying, Ctrl+Q for quitting, Ctrl+F for searching, etc.)
- Fully complete mouse support(mousewheel for scrolling, draggable scrollbar, clickable tabs, selectable text, etc.)
- Doesn't force the use of the mouse either(page buttons for scrolling, Ctrl+Left/Right for tab switching, etc.)
- Syntax highlighting, indentation and parentheses closing
- Clean and tidy user interface
- Scrollable tree view(closing the editor or opening a new terminal and doing `ls` is too tedious, let's be honest)
- Automatic offline updates(thanks to cupd!)

## Keybindings

### Editor mode

- Copy: `Ctrl+C`
- Cut: `Ctrl+X`
- Paste: `Ctrl+V`

- Undo: `Ctrl+Z`
- Redo: `Ctrl+Y`

- Find: `Ctrl+F` (first result after the cursor position)
- Replace: `Ctrl+G`
- Select all: `Ctrl+A`

- Show/hide tree: `Ctrl+T`

- Open file(new tab): `Ctrl+O`
- New file(new tab): `Ctrl+N`
- Save file: `Ctrl+S`
- Close file/tab: `Ctrl+Q`
- Delete file/directory(specify path): `Ctrl+D`
- New directory: `Ctrl+K`

- Prev. tab: `Ctrl+Left`
- Next tab: `Ctrl+Right`

- Start of file: `Ctrl+Up`
- End of file: `Ctrl+Down`

- Move cursor: `Up/Down/Left/Right`
- Select text: `Shift+Up/Down/Left/Right`

### Prompt(find/replace/open/save/etc.) mode

- Cancel: `Ctrl+Q`
- Accept: `Return/Enter/Ctrl+M`

NOTE: Add `~` before a find/replace query to only match whole words.

NOTE: The clipboard actions(copy, cut and paste) all require `xclip` to be installed and in the PATH.

## Supported languages

- C(`.c`, `.h`): full support
- C++(`.cc`, `.hh`, `.cpp`, `.hpp`, `.cxx`): partial support, C++-specific features missing
- x86 assembly(`.asm`, `.s`, `.inc`): full support, NASM syntax
- bash/sh(`.sh`): partial support, has some errors with special cases

## How to build

Thanks to the cupd updating system(check cupd.h), you just have to run the provided binary(./bedd)
and, if the code has been modified, it will rebuild itself. This will only happen when it's inside
this directory, and thus if you move it to /usr/bin or just outside this directory, it won't check
for updates. In the incredibly rare case you don't trust me and my weird binaries, you can rebuild
it with `make all`, and for the next build you can use `./bedd`
instead, as recommended.

## License

This project is licensed with the nop license, check LICENSE for more details.
