import 'dart:io';


double calculateFinalPrice(double price, double discount, double tax) {
  double discountAmount = price * (discount / 100);
  double priceAfterDiscount = price - discountAmount;
  double taxAmount = priceAfterDiscount * (tax / 100);
  return priceAfterDiscount + taxAmount;
}

void main() {

  print('Enter the item price:');
  double price = double.parse(stdin.readLineSync()!);


  print('Enter the discount percentage:');
  double discount = double.parse(stdin.readLineSync()!);


  print('Enter the sales tax percentage:');
  double tax = double.parse(stdin.readLineSync()!);


  double finalPrice = calculateFinalPrice(price, discount, tax);


  print('The final price after discount and tax is: \$${finalPrice.toStringAsFixed(2)}');
}