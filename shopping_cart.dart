// shopping_cart.dart

// Function to calculate the total price of items with optional tax
double calculateTotal(List<double> prices, {double taxRate = 0.0}) {
  // Sum all item prices
  double total = prices.reduce((a, b) => a + b);
  // Apply tax if provided
  total += total * taxRate;
  return total;
}

// Anonymous function to filter out items below a specified price threshold
List<double> filterItems(List<double> prices, double threshold) {
  // Use the where method with an anonymous function to filter items
  return prices.where((price) => price >= threshold).toList();
}

// Higher-order function to apply a discount to a list of prices
List<double> applyDiscount(List<double> prices, double Function(double) discountFunc) {
  // Map each price to its discounted value using the provided function
  return prices.map((price) => discountFunc(price)).toList();
}

// Recursive function to calculate the factorial of a number
int calculateFactorialDiscount(int numItems) {
  // Base case: factorial of 0 or 1 is 1
  if (numItems <= 1) {
    return 1;
  }
  // Recursive case: numItems * factorial of (numItems - 1)
  return numItems * calculateFactorialDiscount(numItems - 1);
}

void main() {
  // Example list of item prices in the shopping cart
  List<double> cart = [12.99, 45.50, 9.99, 22.10, 7.50];

  // 1. Filter items with prices below $10
  List<double> filteredCart = filterItems(cart, 10.0);
  print("Filtered Cart: $filteredCart");

  // 2. Apply a 10% discount to the filtered items
  List<double> discountedCart = applyDiscount(filteredCart, (price) => price * 0.90);
  print("Discounted Cart: $discountedCart");

  // 3. Calculate the total price after applying a 5% tax rate
  double totalPrice = calculateTotal(discountedCart, taxRate: 0.05);
  print("Total Price (with tax): ${totalPrice.toStringAsFixed(2)}");

  // 4. Calculate a special factorial discount based on the number of items
  int numItems = discountedCart.length;
  int factorialDiscountPercent = calculateFactorialDiscount(numItems);
  print("Factorial Discount (%): $factorialDiscountPercent");

  // 5. Apply the factorial discount to the final price
  double finalPrice = totalPrice * (1 - (factorialDiscountPercent / 100));
  print("Final Price (after factorial discount): ${finalPrice.toStringAsFixed(2)}");
}
