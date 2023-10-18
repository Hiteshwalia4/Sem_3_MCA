void main() {
  List<int> numbers = [123, 456, 789, 321]; 
  List<int> reversedNumbers = reverseList(numbers);

  print('Original Numbers: $numbers');
  print('Reversed Numbers: $reversedNumbers');
}

List<int> reverseList(List<int> numbers) {
  List<int> rev = [];

  for (int i in numbers) {
    int reversedNumber = reverseNumber(i);
    rev.add(reversedNumber);
  }

  return rev;
}

int reverseNumber(int number) {
  int reversedNumber = 0;
  while (number > 0) {
    int digit = number % 10;
    reversedNumber = reversedNumber * 10 + digit;
    number ~/= 10;
  }
  return reversedNumber;
}
