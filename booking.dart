// Booking class which holds the calculation of validation
/*<-- najmi saniy(1823617) part start -->*/
import 'dart:io';
import 'dart:core';

class Booking{
var _entry = {};                    //     
dynamic _date;                      //
dynamic _venueNo;                   //
dynamic _timeSlot;                  //
var code;                           // declare local variables
var slotTime;

void setRecord(var bookRecord){
 this._entry = bookRecord;         //assign data in bookRecord to _entry
}

Map getRecord(){
    return _entry;                 // return _entry map 
}

 
void setVenue(var venueNo){
 this._venueNo = venueNo;         // assign _venue with VenueNo value
}



bool checkVenue(){                // check the Venue Number user input (1-30) only
_venueNo = int.parse(_venueNo);

    if ( _venueNo>=1 && _venueNo <=30 ){
         _venueNo = _venueNo.toString();
        
        return true;
    }
   _venueNo = _venueNo.toString();
   print("Invalid venue. Please re-enter venue's number");
 return false;             
}
void setDate(var date){
 this._date = date;        // assign _date with date value 
}
  
String getDate(){

 return _date;             // return the date
}
void setSlot(var timeSlot){
 this._timeSlot = timeSlot;        // assign timeslot value 
}
 
bool checkSlot(){
    _timeSlot = int.parse(_timeSlot); // check the timeslot user input (1-15) only

    if ( _timeSlot>=1 && _timeSlot <=15 ){
         _timeSlot = _timeSlot.toString();

        return true;
    }
   _timeSlot = _timeSlot.toString();
   print("Invalid timeslot. Please re-enter the timeslot");
 return false;
              
}

bool checkDate(){                    // check the date user input (1-15) only
    var current = new DateTime.now(); // set the current date time
    

  _date = DateTime.parse(_date);       // change string to Datetime  (yyyy-mm-dd hh:mm:ss)
  
 if(_date.isAfter(current)){           // compare input for date with current to make sure it is after the current
   _date = _date.toString();          //<--
  _date = _date.split(' ');           //to remove time from date and change to string datatype   
  _date = _date.toList(); 
  _date = _date[0].toString();        //-->
   return true;
}
_date = _date.toString();              //<--
_date = _date.split(' ');  
_date = _date.toList();                //to remove time from date and change to string datatype
_date = _date[0].toString();           //-->
print("Invalid Date. Please re-enter the date (1 day after today)");
return false;

}

void newBooking(){

code='$_date+$_venueNo+$_timeSlot';  // create a key for _entry map


if (_entry['$code']!='BOOKED')        // check the availability of the venue
{_entry['$code']='BOOKED';            // can book
print('\n\nReservation Successful'); 
}
else if (_entry['$code']=='BOOKED')   
{_entry['$code']='BOOKED';           // cannot book 
print('\n\n!!Venue Not Available!!');
}
}
//<-- najmi saniy part end -->

//Ahmed's part assigned by saniy start

void bookedInfo(var bookRecord){      //pass bookRecord

 if (_timeSlot == '1') {
        print('$_venueNo\t\t$_date\t8.01 AM - 9.00 AM\t--SUCCESFULLY RESERVED!');
      }else if (_timeSlot == '2') {
        print('$_venueNo\t\t$_date\t9.01 AM - 10.00 AM\t--SUCCESFULLY RESERVED!');
      }else if (_timeSlot == '3') {
        print('$_venueNo\t\t$_date\t10.01 AM - 11.00 AM\t--SUCCESFULLY RESERVED!');
      } else if (_timeSlot == '4') {
        print('$_venueNo\t\t$_date\t11.01 AM - 12.00 PM\t--SUCCESFULLY RESERVED!');
      } else if (_timeSlot == '5') {
        print('$_venueNo\t\t$_date\t12.01 PM - 1.00 PM\t--SUCCESFULLY RESERVED!');
      } else if (_timeSlot == '6') {
        print('$_venueNo\t\t$_date\t1.01 PM - 2.00 PM\t--SUCCESFULLY RESERVED!');
      } else if (_timeSlot == '7') {
        print('$_venueNo\t\t$_date\t2.01 PM - 3.00 PM\t--SUCCESFULLY RESERVED!');
      } else if (_timeSlot == '8') {
        print('$_venueNo\t\t$_date\t3.01 PM - 4.00 PM\t--SUCCESFULLY RESERVED!');
      } else if (_timeSlot == '9') {
        print('$_venueNo\t\t$_date\t4.01 PM - 5.00 PM\t--SUCCESFULLY RESERVED!');
      } else if (_timeSlot == '10') {
        print('$_venueNo\t\t$_date\t5.01 PM - 6.00 PM\t--SUCCESFULLY RESERVED!');
      } else if (_timeSlot == '11') {
        print('$_venueNo\t\t$_date\t6.01 PM - 7.00 PM\t--SUCCESFULLY RESERVED!');
      } else if (_timeSlot == '12') {
        print('$_venueNo\t\t$_date\t7.01 PM - 8.00 PM\t--SUCCESFULLY RESERVED!');
      } else if (_timeSlot == '13') {
        print('$_venueNo\t\t$_date\t8.01 PM - 9.00 PM\t--SUCCESFULLY RESERVED!');
      } else if (_timeSlot == '14') {
        print('$_venueNo\t\t$_date\t9.01 PM - 10.00 PM\t--SUCCESFULLY RESERVED!');
      } else if (_timeSlot == '15'){
        print('$_venueNo\t\t$_date\t10.01 PM - 11.00 PM\t--SUCCESFULLY RESERVED!');
      }
}
}
//Ahmed's part end

    
