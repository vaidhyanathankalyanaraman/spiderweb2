#include<pic.h>
#define S1 RB0 // use another two switches for counters
#define RS RB1
#define RW RB2
#define EN RB3
#define L1 RC6
int i,j,k,a,b,a1,b1,a2,b2,a3,b3;
int temp=0,counter=0;
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
delay(1000);
EN=0;
}
void lcd_cmd(unsigned char cmd)
{
PORTD=cmd;
RS=0;
RW=0;
EN=1;
delay(1000);
EN=0;
}
void lcd_display(unsigned char m[])
{
for(i=0;m[i]!='\0';i++)
{
lcd_data(m[i]);
}
}
void lcd_init()
{
lcd_cmd(0X38);
lcd_cmd(0X0C);
lcd_cmd(0X80);
lcd_cmd(0XC0);
lcd_cmd(0X01);
}
int main()
{
TRISA=0X01;
PORTA=0X00;
TRISB=0X01;
PORTB=0X00;
TRISC=0X02;
PORTC=0X00;
TRISD=0X00;
PORTD=0X00;
lcd_init();

T0CS=1;          // counter0 declaration
T0SE=1;                   
TMR0=0;               

T1CON=0X03;     // counter1 declaration  
TMR1H=0;
TMR1L=0;



while(1)
{

delay(1000);
counter=TMR0;  // minutes,counter0 display
a=counter/10;
b=counter%10;
lcd_cmd(0XC0);
lcd_data('M');
lcd_cmd(0XC1);
lcd_data('M');
lcd_cmd(0X80);
lcd_data(a+48);
lcd_data(b+48);
lcd_cmd(0X82);
lcd_data(':');
lcd_cmd(0XC2);
lcd_data(':');

delay(1000);
temp=TMR1H<<8;  //seconds,counter1 display
temp=temp+TMR1L;
if(temp>60)
{
temp=temp-60;
counter++;
}
a1=temp/10;
b1=temp%10;
lcd_cmd(0XC3);
lcd_data('S');
lcd_cmd(0XC4);
lcd_data('S');
lcd_cmd(0X83);
lcd_data(48+a1);
lcd_data(48+b1);

if((counter==0)&&(temp==0))
{
if(S1==1)
{
lcd_cmd(0X01);
lcd_cmd(0XC0);
lcd_data('s');
lcd_data('e');
lcd_data('t');
lcd_data('_');
lcd_data('t');
lcd_data('i');
lcd_data('m');
lcd_data('e');
lcd_data('r');
delay(10000);
lcd_cmd(0X01);
}
}

if(counter!=0)
{
if(S1==1)
{
L1=1;
for(j=counter;j>=0;j--)   // minutes decount
{
a3=j/10;
b3=j%10;
lcd_cmd(0X80);
lcd_data(a3+48);
lcd_data(b3+48);

for(k=temp;k>=0;k--)     //seconds decount
{
a2=k/10;
b2=k%10;
lcd_cmd(0X83);
lcd_data(a2+48);
lcd_data(b2+48);
delay(
if(k==0)
{
temp=60;
if((j==0)&&(k==0))
{
TMR0 = 0;
TMR1L =0;
TMR1H = 0;
}
}
}
}
}
}
L1=0;
}
}




















