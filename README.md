# spheRlab README file

spheRlab is an R package with numerous functions related to spherical geometry. The package is intended in particular for analysis and plotting of geophysical unstructured-grid data, for example data produced by the Finite Element (or volumE) Sea-ice Ocean Model (FESOM).

The original development of spheRlab has been driven by personal technical needs to be addressed while working with unstructured-grid data in the context of climate model development and research. The package content is in particular shaped by data produced by the Finite Element (or volumE) Sea-ice Ocean Model (FESOM) of the Alfred Wegener Institute (AWI), and a combined usage with the Climate Data Operators (CDO).

The further development of spheRlab is hoped to get some boost by the move of the project to GitHub for public collaborative code sharing and development.

Starting with version 1.0.0 on 8 December 2016, the code is known to be rich in bugs and needs for improvements. Any help and other feedback is greatly appreciated, either directly on GitHub or via email to <helge.goessling@awi.de>!


What follows is a list of what needs and/or could be done to improve spheRlab:


## URGENT

* make sure that lonlat plotting works fine

* add simple grid (so-called pi-grid) and a corresponding field for examples

* add examples - for (almost) every function

## NEXT

* finish sl.polygon.polygon.intersect and sl.polygon.rotdir (or omit?).

* add function that writes filter information into a CDO-readable file (see corresponding script).

* add decent coastline capabilities

* add a set of predefined colourbars, e.g. the one mentioned by Nicolay

* add other projections (robin, mercator, other?)

* add Modified/Partial Hausdorff Distance

* group function index: plotting; spherical geometry; mostly internal functions; …

* add fesom2cdo functionality: convert 3D field, stored in a single vector as done in FESOMv1, to a matrix where the second dimension is the depth index. Dummy nodes with NAs are added where the local ocean depth is exceeded.

* write a decent vignette?

## WISHLIST

* split sl.read.FESOM into a more basic read function and multiple grid analysis functions

* add grid generation capabilities

* maybe introduce objects (S3 or S4?)? -> grid; colourbar (with breaks?); plot specifics list; more?

* more argument testing at beginning of functions

* speed up things where possible

* move into 3D-field plotting and analysis
