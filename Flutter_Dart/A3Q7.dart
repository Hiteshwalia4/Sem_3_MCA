class Mobile {
  String brand;
  String color;
  double camera;

  Mobile(this.brand, this.color, this.camera);
  void printDetails() {
    print('Brand: $brand');
    print('Color: $color');
    print('Camera: $camera MP');
  }
}

void main() {  
  Mobile mobile1 = Mobile('Samsung', 'Black', 16.0);
  Mobile mobile2 = Mobile('Apple', 'Silver', 12.0);
  Mobile mobile3 = Mobile('Google Pixel', 'White', 20.0);
  print('Mobile 1 Details:');
  mobile1.printDetails();
  print('\nMobile 2 Details:');
  mobile2.printDetails();
  print('\nMobile 3 Details:');
  mobile3.printDetails();
}
