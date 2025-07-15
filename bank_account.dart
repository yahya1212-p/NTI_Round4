import 'dart:io' ;
void showMenu(){
  print('''
  Menu Options:
  1-Deposite
  2-Withdraw
  3-Predict Future Balance (profit Model)
  4-View Account Summary
  5-Exit
    ''');
}
double deposite(double initialBalance){
double? depositedBalance;
while(depositedBalance==null||depositedBalance<0){
        print("Enter Amount to Deposite: ");
        String? input4=stdin.readLineSync();
        if(input4==null||input4.trim().isEmpty){
          print("You Must Enter Amount");
          continue;
        }
        depositedBalance=double.tryParse(input4);
        if(depositedBalance==null||depositedBalance<0){
          print("Invalid Amount Try to Enter Valid Amount");
        }
        initialBalance+=depositedBalance!;
        print("Deposite Successfully,New Balance:$initialBalance");  
}
 return initialBalance;      
}
double withdraw(double initialBalance){
  double? withdrawAmount;
  while(withdrawAmount==null||withdrawAmount<0) {
    print("Enter Your Amount of Withdraw:");
    String? input5=stdin.readLineSync();
    if(input5==null||input5.trim().isEmpty){
      print("Enter Valid Amount");
      continue;
    }
    withdrawAmount=double.tryParse(input5);
    if( withdrawAmount==null||withdrawAmount>initialBalance){
      print("Insufficient balance Try to Enter Valid Amount");
      continue;
    }
    break;
  }
     initialBalance-=withdrawAmount!;
     print("Withdraw Successfully,New Balance:$initialBalance");
     return initialBalance;
}
double predictFutureBalance( double initialBalance){
  double futureBalance=0;
  int? years;
  int? profitRate;
  while(years==null||years<=0){
    print("Enter Number of Years:");
    String? input6=stdin.readLineSync();
    if(input6==null||input6.trim().isEmpty){
      print("Enter Valid Number of Year");
      continue;
    }
    years=int.tryParse(input6);
     if(years==null||years<=0){
      print("Enter Valid Number");
    }
  }
  while(profitRate==null||profitRate<=0){
    print("Enter Profit:");
    String? input7=stdin.readLineSync();
    if(input7==null||input7.trim().isEmpty){
      print("Enter Valid Number of profit");
      continue;
    }
    profitRate=int.tryParse(input7);
    if(profitRate==null||profitRate<=0){
      print("Enter Valid Number");
    }
  }
  futureBalance=initialBalance*(1+(profitRate!*years!/100));
  print("Your Future Balance is:$futureBalance");
  return futureBalance;
}
void accountSummary(String accountName,String accountNumber,String accountType,double initialBalance ){
  print('''
Account Summary:
Account Name:$accountName
Account Number:$accountNumber
Account Type:$accountType
Initial Balance:$initialBalance
Rounded Balane:${initialBalance.round()}
        ''');
}
 void main() {
  print("Create Your Bank Account:");
 String? accountName;
    while(accountName==null||accountName.trim().isEmpty){
        print("Enter Your Account Name: ");
        accountName=stdin.readLineSync();
    }
    String? accountNumber;
    while(accountNumber==null){
        print("Enter Your Account Number: ");
        accountNumber=stdin.readLineSync();
        if(accountNumber==null||accountNumber.trim().isEmpty){
          print("Account Number must be Entered");
          continue;
        }
        if(accountNumber==null||accountNumber.length!=16){
        print("Account Number must be 16 Number");
        accountNumber=null;
        }
    }
    String? accountType;
    while(true){
        print('''
              Enter Your Account Type: 
              1-saving.
              2-checking
             ''');
             accountType=stdin.readLineSync();
             if(accountType==null||accountType.trim().isEmpty){
             print("Account Type must be entered.");
             continue;
             }
            if(!(accountType=="saving"||accountType=="checking")){
               print("Account Type must be saving or checking");
            }
            else{
              break;
            }
            continue;
    }
    double? initialBalance;
    while(initialBalance==null||initialBalance<0){
        print("Enter Your Initial Balance: ");
        String? input2=stdin.readLineSync();
        if(input2==null||input2.trim().isEmpty){
          print("Initial Balance must be Entered");
          continue;
        }
        initialBalance=double.tryParse(input2);
        if(initialBalance==null||initialBalance<0){
          print("Account Number must be Positive Number");
        }
    }
    print("-------------------------------------------------------");
    print(''' About your Account:
        1-Account Name:$accountName;
        2-Account Number:$accountNumber;
        3-Account Type:$accountType;
        4-Initial Balance:$initialBalance;
        ''');
    print('''Your Account is Created
         THANKS FOR YOU''');
showMenu();
int? choicce;
bool continueRunning=true;
while( continueRunning){
  choicce=null;
  while(choicce==null){
    print("Enter your Choice");
    String? input3=stdin.readLineSync();
     if(input3==null||input3.trim().isEmpty){
          print("Enter valid Number");
          continue;
        }
        choicce=int.tryParse(input3);
      if(choicce==null||choicce<=0||choicce>5){
        print("Enter valid Number");
      }
      else if(choicce==1){
      initialBalance=deposite(initialBalance!);
      }
      else if(choicce==2){
      initialBalance=withdraw(initialBalance!);
      }
      else if(choicce==3){
        predictFutureBalance(initialBalance!);
      }
      else if(choicce==4){
        accountSummary(accountName, accountNumber, accountType, initialBalance!);
      }
      else if(choicce==5){
          print(''' Thank You For Using Banking System.
          GOODBYE!
                ''');
          continueRunning=false;
          break;
      }
      print("Do you want to perform another operation? (y/n):");
         String? again = stdin.readLineSync();
         if (again == null || again.toLowerCase() != 'y') {
         print('''
               Thank You For Using Banking System.
               GOODBYE!
               ''');
              continueRunning = false;
         } 
         else{
          showMenu();
         }
 }
}

 }


