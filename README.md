# brd2scad - Eagle PCB to OpenSCAD 3D model converter

## Examples

### Board
![Board](https://i.imgur.com/V262rdW.png)

### OpenSCAD Render
![Render](https://i.imgur.com/M7caqh8.png)

## Installation

Clone this repository into your OpenSCAD library folder (OpenSCAD->File->Show Library Folder)

Add "brd2scad" script into your path (eg `ln -s $PWD/brd2scad ~/bin/`)

## Usage

1. Export GERBERs from your eagle PCB project using eg. [Hackvana's eagle-7.cam](https://github.com/hackvana/hackvana-main/blob/master/support/pcbs/eagle/hackvana-eagle-7.cam)

2. `brd2scad yourproject.brd`

3. `openscad yourproject.scad`

## Contributing

I haven't even tried to generate footprints for most of the parts in Eagle's default library.
I've concentrated solely on footprints that actually show up in the projects I use this on.
Consequently, there are vastly more omissions than available footprints, but they're really easy to add!

Simply create a file named "yourlibrary.scad" in this folder, include eagle-pcb/common.scad and make a module for your part.

Please have a scroll through `common.scad` and check the other examples before sending pull requests!

OpenSCAD will generate warnings for missing library.scads and also missing modules but still generate a render with unavailable parts invisible, so you can rely on OpenSCAD's console log to guide you.

## Bugs & TODO

* Only tested with Eagle-7.6 so far, as Eagle-8's UI infuriates me enough that I almost immediately downgrade every time I try.
* Haven't even attempted to make things robust or comprehensive, just fixed issues as they've appeared.
* Would be nice to generate 3D solely from the brd, at the moment we require gerbers for all the board layers and use the brd just for component information
