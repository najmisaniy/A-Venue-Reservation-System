
import 'dart:io';

int main(){

print("\n\t\t\t****************************");
print("\n\t\t\t* VENUE RESERVATION SYSTEM *");
print("\n\t\t\t****************************");
print("\n\n\t\t\tPress any key to continue....!!");

print(getch());
main_menu();
return 0;
}

String getch() {
  stdin.echoMode = false;
  stdin.lineMode = false;
  int a = stdin.readByteSync();
 return String.fromCharCode(a);
 }


void main_menu(){

var choice;
while(choice!=3)
{


print("\n\n\n\t\t\t1.Book A Room");
print("\n\t\t\t2.Rooms Allotted");
print("\n\t\t\t3.Exit");
print("\n\n\t\t\tEnter Your Choice: ");

dynamic ch = stdin.readLineSync() ;
choice = int.parse(ch);

switch(choice)
{

case 1:	add();
break;

case 2: allot();
break;

case 3:	break;

default:
{

print("\n\n\t\t\tWrong choice.....!!!");
print("\n\t\t\tPress any key to   continue....!!");
getch();

}

}

}

}

void add(){
    print("here function for adding will be present");
}

void allot(){
    print("you will see bookings");
}