int cellSize = 10;
color c = color(random(255),random(255),random(255));

boolean dtri = false;
boolean drect = false;
boolean dcircle = false;
boolean dline = false;
boolean dclear = false;
boolean dcolor = false;
boolean dsave = false;

PFont font;

void showTools(){
  font = loadFont("TimesNewRomanPS-BoldMT-16.vlw");
  textFont(font);
  textAlign(CENTER,CENTER);
  rectMode(CENTER);
  strokeWeight(1);
  fill(102); 
  noStroke();
  rect(30,450,60,900);
  stroke(255);
  noFill();
  rect(30,100,50,20);
  rect(30,130,50,20);  
  rect(30,160,50,20);
  rect(30,190,50,20);
  rect(30,220,50,20);
  rect(30,250,50,20);
  rect(30,280,50,20);
  fill(255);
  text("triangle",30,100);
  text("rect",30,130);
  text("circle",30,160);
  text("line",30,190);
  text("clear",30,220); 
  text("color",30,250); 
  text("save",30,280);
}

void mousePressed(){
  if(mousePressed){
    if(mouseX > 5 && mouseX < 55){
      if(mouseY > 90 && mouseY < 110){
        dtri = true;
        drect = false;
        dcircle = false;
        dline = false;
        dclear = false;
        dcolor = false;
        dsave = false;
      }else if(mouseY > 120 && mouseY < 140){
        dtri = false;
        drect = true;
        dcircle = false;
        dline = false;
        dclear = false;
        dcolor = false;
        dsave = false;
      }else if(mouseY > 150 && mouseY < 170){
        dtri = false;
        drect = false;
        dcircle = true;
        dline = false;
        dclear = false;
        dcolor = false;
        dsave = false;
      }else if(mouseY > 180 && mouseY < 200){
        dtri = false;
        drect = false;
        dcircle = false;
        dline = true;
        dclear = false;
        dcolor = false;
        dsave = false;
      }else if(mouseY > 210 && mouseY < 230){
        dtri = false;
        drect = false;
        dcircle = false;
        dline = false;
        dclear = true;
        dcolor = false;
        dsave = false;
      }else if(mouseY > 240 && mouseY < 260){
        dtri = false;
        drect = false;
        dcircle = false;
        dline = false;
        dclear = false;
        dcolor = true;
        dsave = false;
      }else if(mouseY > 240 && mouseY < 260){
        dtri = false;
        drect = false;
        dcircle = false;
        dline = false;
        dclear = false;
        dcolor = false;
        dsave = true;
      }    
    }
  }
}

void drawSth(){
  rectMode(CENTER);
  stroke(225);
  noFill();  
  if(dtri == true){
     if(mousePressed){
       strokeWeight(3);
       rect(30,100,50,20);        
       noStroke();
       fill(c);
       triangle(mouseX-5,mouseY+5,mouseX+5,mouseY+5,
                mouseX,mouseY-5);
    }
  }else if(drect == true){
     if(mousePressed){
       strokeWeight(3);
       rect(30,130,50,20); 
       noStroke();
       fill(c);
       rectMode(CENTER);
       rect(mouseX,mouseY,cellSize,cellSize);
    }    
  }else if(dcircle == true){ 
    if(mousePressed){
      strokeWeight(3);
      rect(30,160,50,20);
      noStroke();
      fill(c);
      ellipse(mouseX,mouseY,cellSize,cellSize);
    }  
  }else if(dline == true){
     if(mousePressed){
       strokeWeight(3);
       rect(30,190,50,20); 
       stroke(c);
       float weight = dist(mouseX,mouseY,pmouseX,pmouseY);
       strokeWeight(weight);      
       smooth();
       line(mouseX,mouseY,pmouseX,pmouseY);
    }  
  }else if(dclear == true){
     if(mousePressed){
       strokeWeight(3);
       rect(30,220,50,20); 
       background(0);
    }      
  }else if(dcolor == true){
     if(mousePressed){
       c = color(random(255),random(255),random(255));
    }
  }else if(dsave == true){
     if(mousePressed){
       save("sketch"+year()+"_"+month()+"_"+day()
          +"_"+hour()+"_"+minute()+"_"+second()+".jpg");
    }
  }      
}
