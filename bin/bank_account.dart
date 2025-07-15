// import 'dart:io' ;
// void createAccountBank(){
//     String? accountName;
//     while(accountName==null||accountName.trim().isEmpty){
//         print("Enter Your Account Name: ");
//         accountName=stdin.readLineSync();
//     }
//     double? accountNumber;
//     while(accountNumber==null){
//         print("Enter Your Account Number: ");
//         String? input1=stdin.readLineSync();
//         if(input1==null||input1.trim().isEmpty){
//           print("Account Number must be Entered");
//           continue;
//         }
//         accountNumber=double.tryParse(input1);
//         if(accountNumber==null){
//           print("Account Number must be Entered");
//         }
//     }
//     String? accountType;
//     while(true){
//         print('''
//               Enter Your Account Type: 
//               1-saving.
//               2-checking
//              ''');
//              accountType=stdin.readLineSync();
//              if(accountType==null||accountType.trim().isEmpty){
//              print("Account Type must be entered.");
//              continue;
//              }
//             if(!(accountType=="saving"||accountType=="checking")){
//                print("Account Type must be saving or checking");
//             }
//             else{
//               break;
//             }
//             continue;
//     }
//     double? initialBalance;
//     while(initialBalance==null||initialBalance<0){
//         print("Enter Your Initial Balance: ");
//         String? input2=stdin.readLineSync();
//         if(input2==null||input2.trim().isEmpty){
//           print("Initial Balance must be Entered");
//           continue;
//         }
//         initialBalance=double.tryParse(input2);
//         if(initialBalance==null||initialBalance<0){
//           print("Account Number must be Positive Number");
//         }
//     }
//     print("-------------------------------------------------------");
//     print(''' About your Account:
//         1-Account Name:$accountName;
//         2-Account Number:$accountNumber;
//         3-Account Type:$accountType;
//         4-Initial Balance:$initialBalance;
//         ''');
//     print('''Your Account is Created
//          THANKS FOR YOU''');
// }
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
void main() {
  // print("Create Your Bank Account:");
  // createAccountBank();
  showMenu();
}

