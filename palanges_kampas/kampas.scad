

module palanges_kampas() {
    // wall width
    wall=1.5;
    difference() {
        kampas(0);
        translate([wall, wall, wall]) {
            kampas(wall);
        }
    }
}

module kampas(wall=0)
{
    length=50;
    width=24-2*wall;
    height=5;
    
    
    length2=16-2*wall;
    width2=45-2*wall;
    
    union() {
        cube([length, width, height]);
        cube([length2, width2, height]);
    }
}

palanges_kampas();
//difference()  {circle(10);square(10);}