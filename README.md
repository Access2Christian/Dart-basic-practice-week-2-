# Shopping Cart Simulation

## Overview

This Dart program simulates an online shopping cart system. It includes features such as filtering items, applying discounts, calculating totals with tax, and applying a special factorial discount. The program demonstrates various Dart features, including anonymous functions, higher-order functions, and recursion.

## Features

- **Filter Items**: Filters out items priced below a specified threshold.
- **Apply Discount**: Applies a percentage discount to the filtered items.
- **Calculate Total**: Computes the total price of items with optional tax.
- **Factorial Discount**: Applies a special discount based on the factorial of the number of items in the cart.

## File Structure

- `shopping_cart.dart`: Contains the Dart code implementing the shopping cart simulation.

## How to Run

1. **Ensure Dart is Installed**: Make sure you have Dart SDK installed on your system. You can download it from [Dart's official website](https://dart.dev/get-dart).

2. **Create the Dart File**:
   - Save the provided Dart code into a file named `shopping_cart.dart`.

3. **Run the Program**:
   - Open a terminal or command prompt.
   - Navigate to the directory containing `shopping_cart.dart`.
   - Execute the program using the command:
    
     dart run shopping_cart.dart
    

## Code Explanation

1. **`calculateTotal` Function**:
   - Computes the sum of item prices.
   - Includes optional tax calculation.

2. **`filterItems` Function**:
   - Filters out items with prices below a specified threshold using an anonymous function.

3. **`applyDiscount` Function**:
   - Applies a discount function to each item in the list.

4. **`calculateFactorialDiscount` Function**:
   - Recursively calculates the factorial of the number of items for a special discount.

5. **`main` Function**:
   - Demonstrates filtering items, applying discounts, calculating total price with tax, and applying the factorial discount.

## Example Output
Filtered Cart: [12.99, 45.5, 22.1] Discounted Cart: [11.69, 40.95, 19.89] Total Price (with tax): 76.16 Factorial Discount (%): 6 Final Price (after factorial discount): 71.59


## Contributing

If you have suggestions or improvements for this project, feel free to submit a pull request or open an issue.

## License

This project is part of the Dart basic practice assignment for week 2 Power Learn Project Africa (PLP).

## Author
Nnaji, Christian- Access2Christian
