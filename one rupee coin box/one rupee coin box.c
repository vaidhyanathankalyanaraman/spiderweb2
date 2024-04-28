#include<pic.h>
#define C1 RC0
#define C2 RC1
#define C3 RC2

#define RS RC4
#define RW RC5
#define EN RC6

#define S1 RB4
#define S2 RB5
#define L1 RB6
#define L2 RB7
#define R1 RB0 
#define R2 RB1
#define R3 RB2
#define R4 RB3
int j=0;
int b[9];
int a,c,d=1;
signed int k,i;
int dv1=0,dv2=1;
void delay(unsigned int x)
{
while(x--);
}
void lcd_data(unsigned char data)
{
PORTD=data;
RS=1;
RW=0;
EN=1;
delay(3000);
EN=0;
}
void lcd_cmd(unsigned char cmd)
{
PORTD=cmd;
RS=0;
RW=0;
EN=1;
delay(3000);
EN=0;
}
void init()
{
lcd_cmd(0x38);
lcd_cmd(0x06);
lcd_cmd(0x0C);
lcd_cmd(0x80);
lcd_cmd(0xC0);
lcd_cmd(0x01);
}
void lcd_display(unsigned char m[])
{
for(i=0;m[i]!='\0';i++)
{
lcd_data(m[i]);
}
}
main()
{
TRISC=0x00;
PORTC=0x00;
TRISB=0x0F;
PORTB=0x00;
TRISD=0x00;
PORTD=0x00;
init();
while(1)
{
if(S1==1)
{
while(S1==1);
lcd_cmd(0x80);
lcd_display("drop coin");
while(S2==0);
if(S2==1)
{
while(S2==1);
dv1=1;
lcd_cmd(0x80);
lcd_display("dial the number");
delay(10000);
lcd_cmd(0x01);
}
}
if(dv1==1)
{
C1=1;C2=0;C3=0;
if(R1==1)
{
while(R1==1);
lcd_data('1');
b[j]=1;
j++;
}

if(R2==1)
{
while(R2==1);
lcd_data('4');
b[j]=4;
j++;
}
if(R3==1)
{
while(R3==1);
lcd_data('7');
b[j]=7;
j++;
}
if(R4==1)
{
while(R4==1);
lcd_data('*');
}
C1=0;C2=1;C3=0;
if(R1==1)
{
while(R1==1);
lcd_data('2');
b[j]=2;
j++;
}
if(R2==1)
{
while(R2==1);
lcd_data('5');
b[j]=5;
j++;
}
if(R3==1)
{
while(R3==1);
lcd_data('8');
b[j]=8;
j++;
}
if(R4==1)
{
while(R4==1);
lcd_data('0');
b[j]=0;
j++;
}
C1=0;C2=0;C3=1;
if(R1==1)
{
while(R1==1);
lcd_data('3');
b[j]=3;
j++;
}
if(R2==1)
{
while(R2==1);
lcd_data('6');
b[j]=6;
j++;
}
if(R3==1)
{
while(R3==1);
lcd_data('9');
b[j]=9;
j++;
}
if(R4==1)
{
while(R4==1);
lcd_data('#');
}
}

if((j>=10)&&(dv2==1))
{
L1=1;
dv1=0;
lcd_cmd(0xC0);
lcd_display("connecting.......");
delay(10000);
lcd_cmd(0x01);
for(k=60;k>=0;k--)
{
a=k/10;
c=k%10;
lcd_cmd(0x80);
lcd_data(a+48);
delay(1000);
lcd_cmd(0x81);
lcd_data(c+48);
delay(1000);

if(S2==1)
{
k=k+60;
}
if(k<=10)
{
L2=1;
delay(3000);
L2=0;
delay(3000);
}
if(k==1)
{
j=0;
dv2=0;
delay(1000);
lcd_cmd(0x01);
lcd_display("call ended     ");
lcd_cmd(0x01);
}
}
}
}
}












