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
	char text_top_row[50]="Hello World\0";
	char text_bottom_row[50]="My name is TEAM BO my favorite class is EEC181.\0";
	int verticalPos=29;
	VGA_text (35,verticalPos,text_top_row);
	VGA_text (15, verticalPos+1, text_bottom_row);
	VGA_box (0,0,80*4+1,80*5,0x00f);//display pixel x:0 to 319, 16 bit rgb
	VGA_box (1*4-2,25*5,79*4+1,32*5,0xe0f);//display pixel x:0 to 319, 16 bit rgb

	int topDown=0;
	int i;
	int useless=0;
	while(1){
		VGA_text (10,verticalPos, "                                                                   ");
		VGA_text (10, verticalPos+1, "                                                                       ");
		if(topDown==0)
			verticalPos++;
		else 
			verticalPos=verticalPos-1;
		//topDown=0, move the text down, =1 move it up
		if(verticalPos==50)
			topDown=1;
		if(verticalPos==10)
			topDown=0;
	//	VGA_box (1*4-2,28*5,79*4+1,32*5,0x00f);
		VGA_text (35,verticalPos,text_top_row);
		VGA_text (15, verticalPos+1, text_bottom_row);
		for(i=0;i<1000000;i++){
			useless++;
			useless=useless*0;
		}
	}
	return 0;
}
