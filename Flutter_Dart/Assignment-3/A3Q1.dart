import 'dart:io';
void main() {
  List<int> factors = [];
  stdout.write("Enter any number: ");
  int? n = int.parse(stdin.readLineSync() ?? " ");
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      factors.add(i);
    }
  }

  print('Factors of $n are: $factors');
}

