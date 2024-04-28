#include<pic.h>
#define RS RC0
#define RW RC1
#define EN RC2
#define L1 RB0
#define S1 RB6
int temp3,temp2,temp1,a1,b1,c1,d1,e1,f1,i,a2,b2,c2,d2,e2,f2,a3,b3,c3,d3,e3,f3,a=1,b=1,c=1,d=1;
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
for(i=0;m[i]!='0';i++)
{
lcd_data(m[i]);
}
}
int main()
{
TRISB=0x40;
PORTB=0x00;
TRISC=0x00;
PORTC=0x00;
TRISD=0x00;
PORTD=0x00;
ADCON0=0x48;
ADCON1=0x8E;
lcd_init();

while(1)
{
CHS2=0;
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
a1=temp1/1000;
b1=temp1%1000;
c1=b1/100;
d1=b1%100;
e1=d1/10;
f1=d1%10;
lcd_cmd(0x80);
lcd_data(a1+48);
lcd_data(c1+48);
lcd_data(e1+48);
lcd_data(f1+48);
if((temp1>500)&&(b==1))
{
lcd_cmd(0xC0);
lcd_display("wind");
b=0;
delay(1000);
}
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
lcd_cmd(0x85);
lcd_data(a2+48);
lcd_data(c2+48);
lcd_data(e2+48);
lcd_data(f2+48);

if((temp2>800)&&(c==1))
{
lcd_cmd(0xC5);
lcd_display("H.wind");
c=0;
delay(1000);

}
CHS2=0;
CHS1=1;
CHS0=0;
ADON=1;
delay(300);
ADCON0=(ADCON0|0x04);
delay(300);
temp3=ADRESH<<8;
delay(300);
temp3=temp3+ADRESL;
delay(300);
a3=temp3/1000;
b3=temp3%1000;
c3=b3/100;
d3=b3%100;
e3=d3/10;
f3=d3%10;
lcd_cmd(0x8A);
lcd_data(a3+48);
lcd_data(c3+48);
lcd_data(e3+48);
lcd_data(f3+48);

if((temp3>1000)&&(d==1))
{
lcd_cmd(0xCA);
lcd_display("H.rain");
d=0;
delay(1000);
lcd_cmd(0X01);
}

if((S1==1)&&(a==1))
{
L1=1;
lcd_cmd(0xC5);
lcd_display("Wind");
a=0;
}
}

}


