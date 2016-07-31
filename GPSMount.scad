in2cm=25.4;
$fa=2;
$fs=.3;





//10.5 one side
//9.5 other side


//2.7long
//6.19round

//}
//translate ([0,0,9.75])
//cylinder(50,d=100);
//}
difference(){
    difference(){
        union(){
            difference(){
                cylinder(9.74,d=57);
                translate([0,0,-.01]) union(){
                    translate([33,0,-.01]) cylinder(9.77,d=35);
                    translate([0,33,-.01]) cylinder(9.77,d=35);
                    translate([0,-33,-.01]) cylinder(9.77,d=35);
                    translate([-33,0,-.01]) cylinder(9.77,d=35);
                }
            }
            difference(){ //stick
                rotate([0,15,41]) difference(){
                    union(){ 
                        rotate([0,0,0]) translate ([0,10,0]) cube([2.7,41,13.73]);
                        rotate([0,0,4]) translate ([4,10,0]) cube([2.7,41,13.73]);
                    }
                    translate([.25,45.5,5.25]) rotate([0,90,0]){
                        cylinder(2.71,d=6.19);
                        translate([0,0,2.7]) cylinder(5,d=10.5);
                        translate([0,0,-5]) cylinder(5.01,d=9.5);
                    }
                }
    //            translate ([0,0,9.73])  cylinder(50,d=110);
    //            translate ([0,0,-50])  cylinder(50,d=110);
            } 
        }

        union(){
            translate([16.25,16.25,-.01]){
                cylinder(12.51,d=3.36);
                cylinder(.0816*in2cm,d1=.280*in2cm,d2=.138*in2cm);
            }
            
            translate([-16.25,16.25,-.01]){
                cylinder(12.51,d=3.36);
            cylinder(.0816*in2cm,d1=.280*in2cm,d2=.138*in2cm);
            }

            translate([-16.25,-16.25,-.01]){
                cylinder(12.51,d=3.36);
                cylinder(.0816*in2cm,d1=.280*in2cm,d2=.138*in2cm);
            }

            translate([16.25,-16.25,-.01]){
                cylinder(12.51,d=3.36);
                cylinder(.0816*in2cm,d1=.280*in2cm,d2=.138*in2cm);
            }

            translate([0,0,7.99])
                rotate([180,0,0])
                    union(){
                        translate([0,0,-1.76])
                            cylinder (1.77,d=19);
                        
                        cylinder(8,d=8);

                        translate([0,-16.3/2,0])
                            cylinder(5.5,d=2.5);

                        translate([16.3/2,0,0])
                            cylinder(5.5,d=2.5);

                        translate([-16.3/2,0,0])
                            cylinder(5.5,d=2.5);

                        translate([0,16.3/2,0])
                            cylinder(5.5,d=2.5);
                    }
        }
    }

    translate ([0,0,9.73])  cylinder(50,d=110);
    translate ([0,0,-50])  cylinder(50.001,d=110);

}
//translate([0,0,.097*in2cm])
  //  cylinder(3,.138*in2cm/2,.138*in2cm);
