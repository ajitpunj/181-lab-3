void VGA_text(int x, int y, char * text_ptr){
	int offset;
	volatile char * character_buffer = (char *) 0xC4004000;
	offset = (y<<7)+x;
	while(*(text_ptr)){
		*(character_buffer+offset)=*(text_ptr);
		++text_ptr;
		++offset;
	}
}

void VGA_box(int x1, int y1, int x2, int y2, short pixel_color){
	int offset, row, col;
	//vga sdram location address base addr is 0x00000000 in qsys
	volatile short * pixel_buffer = (short *) 0xC0000000;
	for (row=y1; row<=y2; row++){
		for (col = x1; col<=x2; ++col){
			offset=(row << 9)+col;
			*(pixel_buffer+offset)=pixel_color;
		}
	}
}

int main(void){
    volatile int* keyAddrs=;//BASE ADDRESS OF KEYS
    /*
	char text_top_row[50]="Hello World\0";
	char text_bottom_row[50]="My name is TEAM BO my favorite class is EEC181.\0";
	int verticalPos=29;
	VGA_text (35,verticalPos,text_top_row);
	VGA_text (15, verticalPos+1, text_bottom_row);
	VGA_box (0,0,80*4+1,80*5,0x00f);//display pixel x:0 to 319, 16 bit rgb
	VGA_box (1*4-2,25*5,79*4+1,32*5,0xe0f);//display pixel x:0 to 319, 16 bit rgb
     */

	//int topDown=0;
	//int i;
	int useless=0;
    
    int sideLength=20; //sidelength for square is 20 pixels
    //draw initial random boxes
    //TODO: find random generator function for de1
    time_t t;
    srand((unsigned) time(&t));
    //find random start positions in the pixel range 320x640
    int randomStartPosX1=rand() % 621;//player 1 random x value
    int randomStartPosY1=rand() % 301;//player 1 random y values
    int randomStartPosX2=rand() % 621;//player 2 x value
    int randomStartPosY2=rand() % 301;//player 2 y value
    int initialX1, initialX2, initialY1,initialY2;
    int intersectFlag=0;
    VGA_box(0,0,640,320,0x07E0);//light green background
    
    while (intersectFlag==0) {//initialize boxes, and if they intersect replace the boxes
        //draw box 1
        VGA_box(randomStartPosX1,randomStartPosY1,randomStartPosX1+sideLength,randomStartPosY1+sideLength,0xF000);//player 1 box
        
        if ((randomStartPosX1<randomStartPosX2 && randomStartPosX2<randomStartPosX1+sideLength) || (randomStartPosY1<randomStartPosY2 && randomStartPosY2<randomStartPosY1+sideLength)) {//if x2 falls in range x1<x2<x1+sideLength it intersects box1 OR if y2 falls in range y1<y2<y1+sidelength it also intersects box 1 so erase box1 and regenerate random numbers for box 2
            int randomStartposX2=rand() % 621;
            int randomStartPosY2=rand() % 301;
        }
        else{//no intersections, draw box 2 and set intersectFlag to 1
            VGA_box(randomStartPosX2,randomStartPosY2,randomStartPosX2+sideLength,randomStartPosY2+sideLength,0x000F);//player 2 box
            intersectFlag=1;
        }
    }//box positions are finalized now, so set initialX1-initialY2 variables for the reset operation
    initialX1=randomStartPosX1;
    initialX2=randomStartPosX2;
    initialY1=randomStartPosY1;
    initialY2=randomStartPosY2;
    
    int keyVals;
    int i;
    
	while(1){
        //boxes are initially drawn now control movement
        //TODO: sw1 is box2, sw0 is box1, add if statements to control proper movement I.E player one if statement controls x1 and y1 variables
        keyVals= *(keyAddrs);//which key is pressed? key0=right, key1=left, key2=up, key3=down
        if (keyVals==1) {//key0 pressed right
            //set box1 to bg color, move x1 to right
            VGA_box(randomStartPosX2,randomStartPosY2,randomStartPosX2+sideLength,randomStartPosY2+sideLength,0x07e0);
            randomStartPosX1++;
            VGA_box(randomStartPosX2,randomStartPosY2,randomStartPosX2+sideLength,randomStartPosY2+sideLength,0x000F);
        }
        if (keyVals==2) {//key1 pressed left
            //set box1 to bg color, move x1 to left
            VGA_box(randomStartPosX2,randomStartPosY2,randomStartPosX2+sideLength,randomStartPosY2+sideLength,0x07e0);
            randomStartPosX1--;
            VGA_box(randomStartPosX2,randomStartPosY2,randomStartPosX2+sideLength,randomStartPosY2+sideLength,0x000F);
        }
        if (keyVals==4) {//key2 pressed up
            //set box1 to bg color, move y1 up
            VGA_box(randomStartPosX2,randomStartPosY2,randomStartPosX2+sideLength,randomStartPosY2+sideLength,0x07e0);
            randomStartPosY1--;
            VGA_box(randomStartPosX2,randomStartPosY2,randomStartPosX2+sideLength,randomStartPosY2+sideLength,0x000F);
        }
        if (keyVals==8) {//key3 pressed down
            //set box1 to bg color, move y1 down
            VGA_box(randomStartPosX2,randomStartPosY2,randomStartPosX2+sideLength,randomStartPosY2+sideLength,0x07e0);
            randomStartPosY1++;
            VGA_box(randomStartPosX2,randomStartPosY2,randomStartPosX2+sideLength,randomStartPosY2+sideLength,0x000F);
        }
        //check for overlap to win
        if(randomStartPosX1==initialX2 && randomStartPosY1==initialY2){
            //win game, reset boxes to start position, make it player 2 turn
        }
        //add delay to prevent button multiple presses
        for(i=0;i<100000;i++){
            useless++;
            useless=0;
        }
        
    }
	return 0;
}
