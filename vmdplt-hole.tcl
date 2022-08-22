set k 4000
for {set i 1} {$i < 1201} {incr i} {
     mol load pdb $k.pdb
     source hole$k.vmd_plot
     rotate x by -90
     scale by 2
     mol rep Newcartoon
     mol material Transparent
     mol color Resname
     mol addrep $i
     # added new representation for molid 1
     mol delrep 0 $i
     #deleted 0 representation for molid 1 
     render Tachyon $i.dat "/share/apps/vmd/tachyon_LINUXAMD64" -aasamples 12 %s -format TARGA -o %s.tga
      mol delete $i
      set k [expr $k+5]
      }
     #rotate < x | y | z > by angle
