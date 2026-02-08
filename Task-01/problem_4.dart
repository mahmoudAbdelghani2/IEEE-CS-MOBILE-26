import 'dart:io';

void main(){
  String? str=stdin.readLineSync();
  if(str == "" || str == Null) print("Enter a valid String !");
  else{
    int l=0,r=str!.length-1;
    bool flag=false;
    while(l<=r){
      if(str[l] != str[r]){
        flag=true;
        break;
      }
      l++; r--;
    }
    if(!flag) print("Palindrome");
    else print("Not Palindrome");
  }
}