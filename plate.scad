//linear_extrude(height=5) import(file="exports/space-invader-User_Eco2.svg");
mx = 19.05;
sw = 14;
offset = [15.25,8.7,-1];

difference(){
    linear_extrude(height=5) import(file="exports/space-invader-User_Eco2.svg");

translate(offset)
union(){
    for(i=[0:4]){
        translate([i*mx,0,0])cube(sw);
    }
    for(i=[0:1]){
        translate([0,(i+1.5)*mx,0])cube(sw);
    }    
    for(i=[0:2]){
        translate([mx,(i+1)*mx,0])cube(sw);
    }
    for(i=[0:2]){
        translate([2*mx,(i+1.25)*mx,0])cube(sw);
    }
    for(i=[0:1]){
        translate([4*mx,(i+1.5)*mx,0])cube(sw);
    }    
    for(i=[0:2]){
        translate([3*mx,(i+1)*mx,0])cube(sw);
    }
}
}