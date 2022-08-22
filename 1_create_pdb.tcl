#for {set i 0} {$i <= 400} {set i [expr $i +25]} {
#set sel [atomselect top "protein"]
#$sel writepdb $i.pdb
#}
 
for {set i 1} {$i <= 20} {set i [expr $i +1]} {
set sel [atomselect top "protein" frame $i] 
$sel writepdb $i.pdb
 }
