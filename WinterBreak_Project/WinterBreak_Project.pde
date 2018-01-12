PImage bg;
PImage movie;
PImage mall;
PImage food;
PImage walk;
PImage walk1;
PImage pet;
PImage house;
PImage snow;

int x=0;
int y=0;
int x1;

float[]Xs=new float[100];
float[]Ys=new float[100];

void setup()
{
  size(1000,700);
}

void draw()
{
  
  
  bg=loadImage("bg1.png");
  movie=loadImage("movie.jpg");
  mall=loadImage("mall.jpg");
  food=loadImage("food.png");
  walk=loadImage("walk.png");
  walk1=loadImage("walk1.png");
  pet=loadImage("pet.jpg");
  house=loadImage("house.jpg");
  snow=loadImage("snow.png");
  
  bg();
  house();
  mall();
  food();
  movie();
  petshop();
  arrays();
  snow();
  escape();
}

void escape()
{
  if((130+y)<0)
  {
    y=-125;
  }
  
  if((130+y)>700)
  {
    y=510;
  }
  if((450+x)<0)
  {
   x=-440; 
  }
  if((450+x)>1000)
  {
   x=510; 
  }
}

void snow()
{
  for (int i=0; i<100; i++)
  {
  image(snow,Xs[i],10+Ys[i],10+x1,10);
  }
}

void arrays()
{
  for (int i=0; i<50; i++)
  {
    Xs[i]=random(width);
    Ys[i]=random(height);
  }
}

void bg()
{
  image(bg,0,0,1000,700);
  image(walk,450+x,130+y,50,50);
}

void house()
{
    if(580>(450+x))
    {
    if((450+x)>400)
    {
     
    if((130+y)<100)
    {
      image(house,0,0,1000,700);
      PFont f= createFont("Georgina", 63);
  textFont(f);
    textSize(40);
    fill(255,255,255);
    String w="PRESS a to go back";
    text(w,0,60);
    
    x1=-10;
    }
    }

    }
}

void mall()
{
  if((450+x)<100)
  {
    if((130+y)>180)
    {
      if((130+y)<460)
      {
        image(mall,0,0,1000,700);
        PFont f= createFont("Georgina", 63);
  textFont(f);
    textSize(40);
    fill(255,255,255);
    String w="PRESS a to go back";
    text(w,0,60);
    
    x1=-10;
      }
    }
  }
}

void food()
{
    if((450+x)>860)
    {
      if((450+x)<1000)
      {
        if((130+y)>160)
      {
        if((130+y)<320)
        {
        image(food,0,0,1000,700);
        PFont f= createFont("Georgina", 63);
  textFont(f);
    textSize(40);
    fill(255,255,255);
    String w="PRESS a to go back";
    text(w,0,60);
    
    x1=-10;
        }
        
      }
      }
    }
}

void movie()
{
    if((450+x)>860)
    {
      if((450+x)<1000)
      {
      if((130+y)>370)
      {
        if((130+y)<500)
        {
          image(movie,0,0,1000,700);
          PFont f= createFont("Georgina", 63);
  textFont(f);
    textSize(40);
    fill(255,255,255);
    String w="PRESS a to go back";
    text(w,0,60);
    
    x1=-10;
        }
      }
    }
  }
}

void petshop()
{
   if(540>(450+x))
    {
    if((450+x)>430)
    {
      if((130+y)>560)
      {
        image(pet,0,0,1000,700);
        PFont f= createFont("Georgina", 63);
  textFont(f);
    textSize(40);
    fill(255,255,255);
    String w="PRESS a to go back";
    text(w,0,60);
    
    x1=-10;
      }
    }
    }
}


void keyPressed()
{
  if(key=='a')
  {
    
    x1=0;
    
    if(580>(450+x))
    {
    if((450+x)>400)
    {
     
    if((130+y)<100)
    {
    y=0;
    }
    }

    }
    
    
    if((450+x)<100)
  {
    if((130+y)>180)
    {
      if((130+y)<460)
      {
   x=-340;
      }
    }
  }
    
    
    
    
   if(540>(450+x))
    {
    if((450+x)>430)
    {
      if((130+y)>560)
      {
y=420;
      }
    }
    }  
    
    
    
    if((450+x)>860)
    {
      if((450+x)<1000)
      {
      if((130+y)>370)
      {
        if((130+y)<500)
        {
x=400;
        }
      }
    }
  }
    
    
  if((450+x)>860)
    {
      if((450+x)<1000)
      {
        if((130+y)>160)
      {
        if((130+y)<320)
        {
x=400;
        }
        
      }
      }
    }  
    
    
  }
  
  
  if(keyCode==LEFT)
  {
    x=x-20;
     image(walk1,450+x,130+y,50,50);
  }
  
  if(keyCode==RIGHT)
  {
    x=x+20;
    image(walk1,450+x,130+y,50,50);
  }
  if(keyCode==UP)
  {
    y=y-20;
    image(walk1,450+x,130+y,50,50);
  }
  if(keyCode==DOWN)
  {
    y=y+20;
    image(walk1,450+x,130+y,50,50);
  }
  
}