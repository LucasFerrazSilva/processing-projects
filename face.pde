size(500,500);
background(0);

//head
fill(255, 178, 165);
ellipse(250,250, 450, 500);

//left eye
fill(255, 255, 255);
ellipse(125,175, 100, 100);

//right eye
fill(255, 255, 255);
ellipse(375, 175, 100, 100);

//noose
noFill();
arc(250, 300, 80, 40, 0, PI);

//mouth
fill(255, 255, 255);
arc(250, 375, 200, 100, 0, PI, CHORD);
