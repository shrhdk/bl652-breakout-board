#!/bin/sh

# Make ZIP archive for Elecrow from gerber made by KiCad.

# rename gerber files for 
rename 's/^(.*)-F.Cu.gtl$/$1.GTL/' *.gtl
rename 's/^(.*)-B.Cu.gbl$/$1.GBL/' *.gbl
rename 's/^(.*)-F.SilkS.gto$/$1.GTO/' *.gto
rename 's/^(.*)-B.SilkS.gbo$/$1.GBO/' *.gbo
rename 's/^(.*)-F.Mask.gts$/$1.GTS/' *.gts
rename 's/^(.*)-B.Mask.gbs$/$1.GBS/' *.gbs
rename 's/^(.*)-Edge.Cuts.gm1$/$1.GML/' *.gm1
rename 's/^(.*).drl$/$1.TXT/' *.drl

# ZIP

zip -r gerber.zip gerber

