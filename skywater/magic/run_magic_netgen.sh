magic -rcfile /home/confusus/LOCAL/open_pdks/sky130/sky130A/libs.tech/magic/sky130A.magicrc -noconsole -dnull << EOF
gds read $1
load $2
extract all
ext2spice lvs
ext2spice -o $2_lvsmag.spice
flatten -nolabels $2_flat
load $2_flat
extract all
ext2spice lvs
ext2spice cthresh 0
ext2spice -o $2_pex.spice
exit
EOF
netgen -batch lvs "$2_lvsmag.spice $2" "$3 $2" /home/confusus/LOCAL/open_pdks/sky130/sky130A/libs.tech/netgen/sky130A_setup.tcl netgen_output.txt 
