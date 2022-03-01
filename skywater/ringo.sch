v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 240 -40 290 -40 {
lab=1}
N 370 -40 420 -40 {
lab=2}
N 500 -40 550 -40 {
lab=3}
N 630 -40 680 -40 {
lab=4}
N 760 -40 810 -40 {
lab=5}
N 890 -40 940 -40 {
lab=6}
N 1020 -40 1070 -40 {
lab=7}
N 1150 -40 1200 -40 {
lab=8}
N 1280 -40 1330 -40 {
lab=9}
N 1410 -40 1460 -40 {
lab=10}
N 1540 -40 1590 -40 {
lab=FB}
N 1670 -40 1730 -40 {
lab=OUT}
N 90 -60 120 -60 {
lab=FB}
N 90 -100 90 -60 {
lab=FB}
N 90 -100 1550 -100 {
lab=FB}
N 1550 -100 1550 -40 {
lab=FB}
N 90 -20 120 -20 {
lab=EN}
N 90 -200 210 -200 {
lab=VPWR}
N 90 -230 270 -230 {
lab=VPB}
C {sky130_stdcells/nand2_1.sym} 180 -40 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 330 -40 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 460 -40 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 590 -40 0 0 {name=x4 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 720 -40 0 0 {name=x5 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 850 -40 0 0 {name=x6 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 980 -40 0 0 {name=x7 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1110 -40 0 0 {name=x8 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1240 -40 0 0 {name=x9 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1370 -40 0 0 {name=x10 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1500 -40 0 0 {name=x11 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1630 -40 0 0 {name=x12 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 270 -40 0 0 {name=l1 sig_type=std_logic lab=1}
C {devices/lab_wire.sym} 400 -40 0 0 {name=l2 sig_type=std_logic lab=2}
C {devices/lab_wire.sym} 530 -40 0 0 {name=l3 sig_type=std_logic lab=3}
C {devices/lab_wire.sym} 660 -40 0 0 {name=l4 sig_type=std_logic lab=4}
C {devices/lab_wire.sym} 790 -40 0 0 {name=l5 sig_type=std_logic lab=5}
C {devices/lab_wire.sym} 920 -40 0 0 {name=l6 sig_type=std_logic lab=6}
C {devices/lab_wire.sym} 1050 -40 0 0 {name=l7 sig_type=std_logic lab=7}
C {devices/lab_wire.sym} 1180 -40 0 0 {name=l8 sig_type=std_logic lab=8}
C {devices/lab_wire.sym} 1310 -40 0 0 {name=l9 sig_type=std_logic lab=9}
C {devices/lab_wire.sym} 1430 -40 0 0 {name=l10 sig_type=std_logic lab=10}
C {devices/lab_wire.sym} 1580 -40 0 0 {name=l11 sig_type=std_logic lab=FB}
C {devices/ipin.sym} 90 -20 0 0 {name=p1 lab=EN}
C {devices/opin.sym} 1730 -40 0 0 {name=p2 lab=OUT}
C {devices/code_shown.sym} 810 -370 0 0 {name=SPICE only_toplevel=true place=header value="
VVGND VGND 0 dc 0
VVNB VNB 0 dc 0
VPULSE EN 0 dc 0 PULSE (0 1.8v 5n 2n 2n 1 1)
.TRAN 0.1n 100ns
.PRINT TRAN V(EN)
"}
C {devices/code.sym} 670 -370 0 0 {name=TT_MODELS place=header
only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SKYWATER_MODELS/models/sky130.lib.spice tt 
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/inv/sky130_fd_sc_hd__inv_1.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/nand2/sky130_fd_sc_hd__nand2_1.spice
"}
C {devices/vsource.sym} 270 -200 0 1 {name=VVPB value=1.8}
C {devices/lab_wire.sym} 270 -170 0 0 {name=l13 sig_type=std_logic lab=0}
C {devices/vsource.sym} 210 -170 0 1 {name=VVPWR value=1.8}
C {devices/lab_wire.sym} 140 -200 0 1 {name=l14 sig_type=std_logic lab=VPWR}
C {devices/lab_wire.sym} 210 -140 0 0 {name=l15 sig_type=std_logic lab=0}
C {devices/ipin.sym} 90 -230 0 0 {name=p3 lab=VPB}
C {devices/ipin.sym} 90 -200 0 0 {name=p4 lab=VPWR}
C {devices/ipin.sym} 90 -170 0 0 {name=p5 lab=VGND}
C {devices/ipin.sym} 90 -140 0 0 {name=p6 lab=VNB}
