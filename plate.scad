//linear_extrude(height=5) import(file="exports/space-invader-User_Eco2.svg");
mx = 19.05;
sw = 14;
offset = [15.25,8.7,-1];
height = 5;
top_holes = true;
bottom_holes = true;

module onoffswitch(){
h=1.7;
translate([0,0,height-h+1])cube([9,6,h]);
}

module diode(){
    dx = 5;
    dy = 3.5;
    dz = 1.5;
    translate([0,0,dz])cube([dx,dy,dz],center=true);
}

module ddiode(){
    dx = 5;
    dy = 5.5;
    dz = 1.5;
    translate([0,0,dz])cube([dx,dy,dz],center=true);
}
module xiao(){
    dx = 22;
    dy = 23;
    dz = 3;
    translate([-dx/2-2.5,0,0])cube([dx,dy,dz]);
}

difference(){
    linear_extrude(height=height) import(file="exports/space-invader-User_Eco2.svg");

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
    if(bottom_holes){
    translate([2.5*mx,-2.6,0])xiao();
    
    for(i=[0:2]){
        translate([mx+sw/2,i*mx+sw+2.5,0]) diode();
    }
    for(i=[0:2]){
        translate([3*mx+sw/2,i*mx+sw+2.5,0]) diode();
    }
    for(i=[0:2]){
        translate([2*mx+sw/2,(i+0.25)*mx+sw+2.5,0]) diode();
    }
    for(i=[0:1]){
        translate([(1+3*i)*mx-2.5,sw/2,0]) ddiode();
    }
    for(i=[0:1]){
        translate([(0.5+4*i)*mx-2.5,2*mx+sw/2,0]) ddiode();
    }
    
    translate([1*mx+sw,sw/2-3,1.5])cube([2.*mx,20,3],center=true);
    
    }
    if(top_holes){
    translate([11.5,-3,0])onoffswitch();
    }
}
}
