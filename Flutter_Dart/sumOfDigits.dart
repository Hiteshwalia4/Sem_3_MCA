import 'dart:io';
void main() {
  print("Enter Number: ");
 int x = int.parse(stdin.readLineSync() !);
 int res=0;
 while(x>0) {
  int i=x%10;
  res+=i;
  x~/=10;
 }
 print("Sum of digits is:${res}");
}