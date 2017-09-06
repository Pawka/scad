

module kvadratas(width, wall=1) {
    difference() {
        
        height=20;
        top_width=5;
        union() {
            cube([width, width, height]);
            translate([-top_width, -top_width, 0]) {
                cube([width+2*top_width, width+2*top_width, 2]);
            }
        }
        translate([wall, wall, 0]) {
            cube([width-2*wall, width-2*wall, height+10]);
        }
    }
}

kvadratas(50, 1);