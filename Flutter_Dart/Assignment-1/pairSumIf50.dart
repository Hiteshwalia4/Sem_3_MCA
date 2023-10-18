import 'dart:io';
void main() {
  print("Enter first number: ");
  double n1 = double.parse(stdin.readLineSync() !);
  print("First number h : ${n1}");
  print("Enter Second number: ");
  double n2 = double.parse(stdin.readLineSync() !);
  print("Second number h : ${n2}");
  if(n1==50 || n2==50 || n1+n2==50)
    print("True");
  else
    print("False");
  }