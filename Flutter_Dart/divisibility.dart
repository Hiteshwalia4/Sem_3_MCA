import 'dart:io';

bool divby2(int n){
  int x=n%10;
  if(x==2 || x==4 || x==6 || x==8 || x==0 )
    return true;
  return false;
}

int sum_of_digits(int x){
  int res=0;
  // int n=x;
  while(x>0) {
    int i=x%10;
    res+=i;
    x~/=10;
  }
  return res;
}

bool divby3(int x){
  int sum_of_dig=sum_of_digits(x);
  if(sum_of_dig%3==0)
    return true;
  return false;      
}

void divby4(int x){
  int lastTwoDigits = x % 100;
  if(lastTwoDigits % 4 == 0)
    print("${x} is divisible by 4 :-)");
  else  
    print("${x} is not divisible by 4 :-(");
}

void divby5(int n){
 int x=n%10;
  if(x==5 || x==0 )
    print("${n} is divisible by 5 :-)");
  else  
    print("${n} is not divisible by 5 :-(");
}

void divby6(int x){
  if(divby2(x) && divby3(x))
    print("${x} is divisible by 6 :-)");
  else  
    print("${x} is not divisible by 6 :-(");
}
void divby7(int x){
int rem = (x ~/ 10);
  int diff = 2 * (x % 10) - rem;
  if(diff % 7 == 0)
    print("${x} is divisible by 7 :-)");
  else  
    print("${x} is not divisible by 7 :-(");
}
void divby8(int x){
  int lastThreeDigits = x % 1000;
  if(lastThreeDigits % 8 == 0)
        print("${x} is divisible by 8 :-)");
  else  
    print("${x} is not divisible by 8 :-(");
}
void divby9(int x){
int sum_of_dig=sum_of_digits(x);
 if(sum_of_dig%9==0)
  print("${x} is divisible by 9 :-)");
else  
    print("${x} is not divisible by 9 :-(");
}
void divby10(int n){
 int x=n%10;
  if(x==0 )
    print("${n} is divisible by 10 :-)");
  else  
    print("${n} is not divisible by 10 :-(");
}
bool divby11(int number){
 List<int> digits = [];
  while (number > 0) {
    digits.add(number % 10);
    number ~/= 10;
  }

  int sumOdd = 0;
  int sumEven = 0;
  
  for (int i = 0; i < digits.length; i++) {
    if (i % 2 == 0) {
      sumOdd += digits[i];
    } else {
      sumEven += digits[i];
    }
  }

  int difference = sumOdd - sumEven;

  return difference % 11 == 0;
}
void main() { 
  print("Number dal bhidu: ");
 int x = int.parse(stdin.readLineSync() !);
 bool dby2=divby2(x);
 if(dby2)
    print("${x} is divisible by 2 :-)");
  else  
    print("${x} is not divisible by 2 :-(");
  
 bool dby3=divby3(x);
 if(dby3)
    print("${x} is divisible by 3 :-)");
  else  
    print("${x} is not divisible by 3 :-(");
  
 divby4(x);
 divby5(x);
 divby6(x);
 divby7(x);
 divby8(x);
 divby9(x);
 divby10(x);
  
 bool dby11=divby11(x);
 if(dby11)
    print("${x} is divisible by 11 :-)");
  else  
    print("${x} is not divisible by 11 :-(");
}