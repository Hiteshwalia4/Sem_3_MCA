import 'dart:io';
void main() {
  int num =1;
  stdout.write("Enter the number of rows: ");
  int n = int.parse(stdin.readLineSync() ?? '');
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(num);
      num+=1;
    }
    stdout.write("\n");
  }
}