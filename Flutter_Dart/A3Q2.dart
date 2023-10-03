import 'dart:io';
void main() {
  stdout.write("Enter any number: ");
  int n = int.parse(stdin.readLineSync() ?? " ");
  List<int> primeFactors = [];
  for (int factor = 2; factor <= n; factor++) {
    while (n % factor == 0) {
      primeFactors.add(factor);
      n ~/= factor;
    }
  }

  print('Prime factors of $n are: $primeFactors');
}
