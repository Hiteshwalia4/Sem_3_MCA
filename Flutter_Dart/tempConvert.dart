import 'dart:io';
void main() {
  print("Mere temperature koonvertoor me apka swagat h huehue");
  print("Enter Celcius temperature: ");
  double celcius = double.parse(stdin.readLineSync() !);
  print("Entered temp : ${celcius}");
  double fahrenheit= ((9*celcius) + 160 )/5;
  print("Temperature in fahrenheit: ${fahrenheit}");
  double cel= (5*(fahrenheit-32))/9;
  print("Temperature in celcius: ${cel}");
}