#include<pic.h>
#define RS RD6
#define RW RB1
#define EN RD7
#define _XTAL_FREQ 20000000
__CONFIG(0X3F72);
int temp,a,b,c,d,e,f,i;
void delay(unsigned char x)
{
while(x--);
}
void lcd_data(unsigned char data)
{
PORTB=data;
RS=1;
RW=0;
EN=1;
delay(1000);
EN=0;
}
void lcd_cmd(unsigned int cmd)
{
PORTB=cmd;
RS=0;
RW=0;
EN=1;
delay(1000);
EN=0;
}
void lcd_init()
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
for(i=0;m[i]!='0';i++)
{
lcd_data(m[i]);
}
}
int main()
{
TRISB=0x00;
PORTB=0x00;
TRISD=0x00;
PORTD=0x00;
ADCON0=0x40;
ADCON1=0x8E;
lcd_init();
while(1)
{
CHS2=0;
CHS1=0;
CHS0=0;
ADON=1;
ADCON0=(ADCON0|0x04);
temp=ADRESH<<8;
temp=temp+ADRESL;
a=temp/1000;
b=temp%1000;
c=b/100;
d=b%100;
e=d/10;
f=d%10;
lcd_cmd(0xC0);
lcd_data(a+48);
lcd_data(c+48);
lcd_data(e+48);
lcd_data(f+48);
}
}
