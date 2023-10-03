import 'dart:io';
void main() {
  int count=0;
  stdout.write("Enter any number: ");
  int? n = int.parse(stdin.readLineSync() ?? " ");
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      count++;
    }
  }

  print('Number of factors of $n are: $count');
}

