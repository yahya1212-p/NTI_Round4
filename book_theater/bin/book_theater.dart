
import 'dart:io';

void show(){
  print('''
  Press 1 To Book a New Seat.
  Press 2 To Show The Theater Seats.
  Press 3 To Show User Data.
  Press 4 To Exit.
        ''');
}
// void showSeats(){
//     List<List<String>> seats=
//   [["E",'E','E','E','E'],
//   ['E','E','E','E','E'],
//   ['E','E','E','E','E'],
//   ['E','E','E','E','E'],
//   ['E','E','E','E','E']];
//   for(var row in seats){
//     print(row.join(" "));
//   }
// }
void main(){
int?number,r,c;
String?name,phone;
List<Map<String,dynamic>>users=[];
//List<List<String>> seats = List.generate(5, (_) => List.filled(5, 'E')) 
   List<List<String>> seats=
  [['E','E','E','E','E'],
  ['E','E','E','E','E'],
  ['E','E','E','E','E'],
  ['E','E','E','E','E'],
  ['E','E','E','E','E']];
while(true){
 print(seats);
  number=null;
  while(number==null||number<0||number>4){
  print("Enter your Choice");
  String?input1=stdin.readLineSync();
    while(input1==null||input1.trim().isEmpty){
    print("Enter Valid Number");
   number=null;
   continue;
  }
    number=int.tryParse(input1!);
    if(number==null||number<0||number>4){
          print("Nmber Must Be Between 1-4");
          number=null;
       }
    if(number!=null){
        break;
       }
}
if(number==1){
  r=null;
  c=null;
  name=null;
  phone=null;
   while(r==null||r<0||r>5){
  print("Enter Number Of Row");
  String?input2=stdin.readLineSync();
    while(input2==null||input2.trim().isEmpty){
    print("Enter Valid Number");
       r=null;
       continue;
  }
    r=int.tryParse(input2!);
    if(r==null||r<0||r>5){
          print("Nmber Must Be Between 1-5");
          r=null;
       }
    }
    while(c==null||c<0||c>5){
  print("Enter Number Of Colum");
  String?input3=stdin.readLineSync();
    while(input3==null||input3.trim().isEmpty){
    print("Enter Valid Number");
       c=null;
       continue;
  }
    c=int.tryParse(input3!);
    if(c==null||c<0||c>5){
          print("Nmber Must Be Between 1-5");
          c=null;
       }
}
print("Value in seat[$r][$c] = ${seats[r][c]}");
if(seats[r][c]=='B'){
  print("Seat Is Booked Choose Another Seat");
  continue;
}
else{
 seats[r][c]='B';
while(name==null){
  print("Enter Your Name");
  name=stdin.readLineSync();
  if(name==null||name.trim().isEmpty){
    print("Enter Valid Name");
     name=null;
     continue;
  }
}
  while(phone==null){
        print("Enter Your  Number: ");
        phone=stdin.readLineSync();
        if(phone==null||phone.trim().isEmpty){
          print("Account Number must be Entered");
          phone=null;
          continue;
        }
        if(phone.length != 11 || int.tryParse(phone) == null){
        print("Account Number must be 11 Phone");
        phone=null;
        }
    }
    print("Seat Booked Successfully!");
    }

    users.add({
      "row":r+1,
      "col":c+1,
      "Name":name,
      "Phone":phone
    }
    );
}
else if(number==2){
    print(" Theater Seats:");
      for (int i = 0; i < seats.length; i++) {
        print("Row ${i + 1}: ${seats[i].join(" ")}");
      }
      print('');
}
else if(number==3){
  print("Users Booking Details:");
  for (var user in users) {
    print("Seat: ${user['row']},${user['col']} | Name: ${user['name']} | Phone: ${user['phone']}");
}
}
else if(number==4){
  print("See You");
  break;
}
}
}



