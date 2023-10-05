void main() {
  int decimalNumber = 8;   String binaryEquivalent = decimalToBinary(decimalNumber);
  print('Input: $decimalNumber');
  print('Output: $binaryEquivalent');
}

String decimalToBinary(int decimalNumber) {
  if (decimalNumber == 0) {
    return '0';
  }

  String binary = '';
  while (decimalNumber > 0) {
    int remainder = decimalNumber % 2;
    binary = '$remainder$binary';
    decimalNumber ~/= 2;
  }

  return binary;
}
