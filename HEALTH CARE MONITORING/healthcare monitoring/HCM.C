#include<pic.h>
#define RS RB0
#define RW RB1
#define EN RB2
#define LED RB3
#define _XTAL_FREQ 20000000
__CONFIG(0x3F72);
int temp1,temp2,a,b,c,d,e,f,i,a2,b2,c2,d2,e2,f2;
void String_transmit(unsigned char m[])
{
for(i=0;m[i]!=0;i++)
{
TXREG=m[i];
while(TXIF==0);
TXIF=0;
}
}
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
void lcd_init()
{
lcd_cmd(0x38);
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
int main()
{
TRISB=0x00;
PORTB=0x00;
TRISD=0x00;
PORTD=0x00;
ADCON0=0x48;
ADCON1=0x8E;
SPBRG=25;
TXSTA=0x24;
RCSTA=0x90;
lcd_init();
String_transmit("AT\r\n");
String_transmit("ATE0\r\n");
while(1)
{

CHS2=0; // heart beat sensor
CHS1=0;
CHS0=0;
ADON=1;
delay(300);
ADCON0=(ADCON0|0x04);
delay(300);
temp1=ADRESH<<8;
delay(300);
temp1=temp1+ADRESL;
delay(300);
a=temp1/1000;
b=temp1%1000;
c=b/100;
d=b%100;
e=d/10;
f=d%10;
lcd_cmd(0x80);
lcd_display("HBS:");
lcd_data(a+48);
lcd_data(c+48);
lcd_data(e+48);
lcd_data(f+48);
CHS2=0;
CHS1=0;
CHS0=1;
ADON=1;
delay(300);
ADCON0=(ADCON0|0x04);
delay(300);
temp2=ADRESH<<8;
delay(300);
temp2=temp2+ADRESL;
delay(300);
a2=temp2/1000;
b2=temp2%1000;
c2=b2/100;
d2=b2%100;
e2=d2/10;
f2=d2%10;
lcd_cmd(0xC0);
lcd_display("TS:");
lcd_data(a2+48);
lcd_data(c2+48);
lcd_data(e2+48);
lcd_data(f2+48);
if(temp1>=200)
{
LED=1;
String_transmit("AT+CMGF=1\r\n");
delay(200);
String_transmit("AT+CMGS=\"+919600779062\"\r\n");
delay(200);
String_transmit("HELP");
delay(200);
String_transmit((char)26);
}
else
{
LED=0;
}
}
}
