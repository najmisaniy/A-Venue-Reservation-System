//Ahmed's part assigned by saniy start
import 'dart:io';
import 'booking.dart';
import 'dart:core';


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
  int a = stdin.readByteSync();             // function to pause the terminal and release when user press to continue
  
 return String.fromCharCode(a);
 }


void main_menu(){
var bookRecord = {};          // main map to record all booking
var booking = new Booking();

var choice;
while(choice!=3)
{


 stdin.lineMode = true;
 stdin.echoMode = true;
print("\n\n\n\t\t\t1.Reserve A Room");
print("\n\t\t\t2.Last Succesfull Booking Details");
print("\n\t\t\t3.Exit");
print("\n\n\t\t\tEnter Your Choice: ");         // Menu option to choose whether to book room or check last booking Details

dynamic ch = stdin.readLineSync() ;
choice = int.parse(ch);

switch(choice)
{

case 1:	{
    bookRecord.addAll(add(bookRecord,booking));  // For adding user inputs in Map
    
    }
break;

case 2: {allot(bookRecord,booking);}            // To view the results of succesfull booking
break;

case 3:	break;                                  // Exits out of program

default:
{

print("\n\n\t\t\tWrong choice.....!!!");
print("\n\t\t\tPress any key to   continue....!!");
getch();
stdin.listen((_) {}).cancel();

}

}

}

}
//Ahmed's part assigned by saniy end

// <-- najmi saniy part start
Map add(var bookRecord, var booking){

dynamic date;
dynamic venueNo;
dynamic timeSlot;
bool venueCheck=false;
bool slotCheck=false;
bool dateCheck=false;
var data;                                               //declare variables


booking.setRecord(bookRecord);                          // pass the bookRecord


while(venueCheck != true)     
{
stdout.write("\nInput Venue number (1-30):");          // display "Input Venue number (1-30): "
venueNo = stdin.readLineSync();                        // retrieve input for venue number
booking.setVenue(venueNo);                             // set the venue number

venueCheck = booking.checkVenue();                     //validate the venue number 

} 


while(dateCheck==false){
stdout.write("\nInput Date (yyyy-mm-dd):");             // display "Input Date (yyyy-mm-dd):""
date = stdin.readLineSync();                            // retrieve the input for date
booking.setDate(date);                                  // set the date

dateCheck = booking.checkDate();                        //check the date


}
print("\n\n\n\tTime Slot");
print("\n\t 1.  8.01AM -  9.00AM     2.  9.01AM - 10.00AM    3. 10.01AM - 11.00AM");
print("\n\t 4. 11.01AM - 12.00PM     5. 12.01PM -  1.00PM    6.  1.01PM -  2.00PM");
print("\n\t 7.  2.01PM -  3.00PM     8.  3.01PM -  4.00PM    9.  4.01PM -  5.00PM");
print("\n\t10.  5.01PM -  6.00PM    11.  6.01PM -  7.00PM   12.  7.01PM -  8.00PM");
print("\n\t13.  8.01PM -  9.00PM    14.  9.01PM - 10.00PM   15. 10.01PM - 11.00PM");     // display the time slot 
while(slotCheck != true){

stdout.write("\nInput timeSlot:");                      //display "Input time slot"
timeSlot = stdin.readLineSync();                        // retrieve the input for timeslot
booking.setSlot(timeSlot);                              // set the time slot

slotCheck = booking.checkSlot();                        // validate time slot


}
booking.newBooking();                                   //record new booking
return booking.getRecord();                             //return the map
}
// najmi saniy part end -->

//Ahmed's part assigned by saniy start
void allot(var bookRecord, var booking){


print("\n\t\t\t    List Of Venues Allotted");
print("\n\t\t\t    ----------------------\n\n");
print("Venue No.\t   Date\t\tTime Slot\n");

booking.bookedInfo(bookRecord);                 // pass bookRecord

print("\n\n\n\t\t\tPress any key to go to Menu Option.....!!");
getch();

}
//Ahmed's part end