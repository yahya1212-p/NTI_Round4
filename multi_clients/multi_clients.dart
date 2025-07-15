import 'dart:io';
void showMenu(){
  print('''Hello In Store,
  The Store Offer 5 Fixed Products:
  1-Keyboard-\$100
  2-Mouse-\$50
  3-Monitor-\$300
  4-USB-Cable-\$20
  5-HeadPhones-\$150
       ''');
}
double? calculateTax(double? subTotal ){
  double?tax=subTotal!*0.1;
return tax;
}
double? Discount(double?subTotal){
  double?discount;
  discount=subTotal!*0.1;
  return discount;
}
void checkForQuit(String? input) {
  if (input != null && input.toLowerCase() == 'q') {
    print("Exiting Program. Goodbye!");
    exit(0);
  }
}

void main(){
  showMenu();
  int?products,quantity;
   double? subTotal=0.0;
   String? name;
  bool continueRunning=true;
  bool ttt=true;
  while(true){
  while(continueRunning){
  while(ttt){
     products=null;
    quantity=null;
  while(products==null||products<0){
       print("Enter Number Of Products Do You Want");
       String?input1=stdin.readLineSync();
       checkForQuit(input1);
       if(input1==null||input1.trim().isEmpty){
          print("Enter Valid Number");
          continue;
       }
       products=int.tryParse(input1);
       if(products==null||products<0||products>5){
          print("Nmber Must Be Between 1-5");
          products=null;
          continue;
       }
       if(products==0){ 
        ttt=false;
        break;
       }
  }
    if(!ttt)break;
  while(quantity==null||quantity<0){
      print("Enter Quantity Do You Want");
      String?input2=stdin.readLineSync();
      checkForQuit(input2);
      if(input2==null||input2.trim().isEmpty){
        print("Enter Valid Quantity");
        continue;
      }
      quantity=int.tryParse(input2);
      if(quantity==0){
        ttt=false;
        continue;
      }
      if(!ttt)break;
  }
          if(products==1){
             subTotal=subTotal!+100*(quantity!*1.0);
          }
           else if(products==2){
             subTotal=subTotal!+50*(quantity!*1.0);
           }
           else if(products==3){
               subTotal=subTotal!+300*(quantity!*1.0);
           }
           else if(products==4){
               subTotal=subTotal!+20*(quantity!*1.0);
           }
           else if(products==5){
               subTotal=subTotal!+150*(quantity!*1.0);
           }}
  
             while(name==null||name.trim().isEmpty){
                 print("Enter Your  Name: ");
                 name=stdin.readLineSync();
             }
    String? number;
    checkForQuit(number);
    while(number==null){
        print("Enter Your  Number: ");
        number=stdin.readLineSync();
        if(number==null||number.trim().isEmpty){
          print("Account Number must be Entered");
          continue;
        }
        if(number.length != 11 || int.tryParse(number) == null){
        print("Account Number must be 11 Number");
        number=null;
        }
    }
          print('''SubTotal:$subTotal
                   Tax(10%):\$${calculateTax(subTotal)}
                   Discount:\$${Discount(subTotal)}
             ''');
             print("Do You Want A Delivery (y/n)?");
               String? again = stdin.readLineSync();
               checkForQuit(again);
               if (again == null || again.toLowerCase() != 'y') {
                print('''
                 Total Amount To Pay:\$${subTotal!+calculateTax(subTotal)!-Discount(subTotal)!}
               Thank You For Shopiing With Us,$name Done.
               GOODBYE!
               ''');
               break;
               } 
              else{
                 double? distance;
                 const int fee=45;
                while(distance==null||distance<=0){
                     print("Enter Distance in Kilometer:");
                     String?input3=stdin.readLineSync();
                     checkForQuit(input3);
                     while(input3==null||input3.trim().isEmpty){
                      print("Enter Valid Distance");
                      continue;
                     }
                     distance=double.tryParse(input3);
                }
                print("Delivery Fee is \$45 so Total Amount To Pay :\$${fee+subTotal!+calculateTax(subTotal)!-Discount(subTotal)!}");
                break;
              }
            
      }
      print("Ready For Next Customer");
      showMenu();
      subTotal = 0.0;
      name = null;
      continueRunning = true;
      ttt = true;
      products = null;
      quantity = null;
  }
  }