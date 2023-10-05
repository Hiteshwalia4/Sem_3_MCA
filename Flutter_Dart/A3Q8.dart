void main() {
  int number = 125; // Replace with the number you want to convert
  print('Input N = $number');
  String words = numberToWords(number);
  print('Output: $words');
}
String numberToWords(int number) {
  if (number == 0) {
    return 'Zero';
  }
  final List<String> unitWords = [ 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine'];
  final List<String> tensWords = ['', '', 'Twenty', 'Thirty', 'Forty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety'];
  final List<String> teensWords = [ 'Ten', 'Eleven', 'Twelve', 'Thirteen', 'Fourteen', 'Fifteen', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen'];

  String result = '';
  int thousands = number ~/ 1000;
  if (thousands > 0) {
    result += '${unitWords[thousands]} Thousand ';
    number %= 1000;
  }

  int hundreds = number ~/ 100;
  if (hundreds > 0) {
    result += '${unitWords[hundreds]} Hundred ';
    number %= 100;
  }

  if (number >= 20) {
    int tens = number ~/ 10;
    result += '${tensWords[tens]} ';
    number %= 10;
  }
 else if (number >= 10) {
    result += '${teensWords[number - 10]}';
    number = 0; // We've already handled the tens and ones place
  }

  if (number > 0) {
    result += '${unitWords[number]}';
  }
  return result.trim();
}
