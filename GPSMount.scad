in2cm=25.4;




translate([50,0,0])
cylinder(.0816*in2cm,d1=.280*in2cm,d2=.138*in2cm);

cylinder(8,d=8);

translate([0,-16.3/2,0])
cylinder(5.5,d=2.5);

translate([16.3/2,0,0])
cylinder(5.5,d=2.5);

translate([-16.3/2,0,0])
cylinder(5.5,d=2.5);

translate([0,16.3/2,0])
cylinder(5.5,d=2.5);

//translate([0,0,.097*in2cm])
  //  cylinder(3,.138*in2cm/2,.138*in2cm);
