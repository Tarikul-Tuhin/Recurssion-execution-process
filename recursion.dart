void main() {
  int sum(int amount) {
    if (amount <= 0) {
      return 0;
    }
    return amount + sum(amount - 1);
  }

  print('Sum of numbers up to 5: ${sum(6)}'); // Expected: 21

  // Step1: Recurssion execution order until it finds the base case
  // sum(6) = 6 + sum(6-1) = 6 + sum(5)
  // sum(5) = 5 + sum(5-1) = 5 + sum(4)
  // sum(4) = 4 + sum(4-1) = 4 + sum(3)
  // sum(3) = 3 + sum(3-1) = 3 + sum(2)
  // sum(2) = 2 + sum(2-1) = 2 + sum(1)
  // sum(1) = 1 + sum(1-1) = 1 + sum(0)
  // sum(0) = 0 base case

  // Step2: Recursion execution order after finding the base case
  // sum(0) = 0
  // sum(1) = 1 + sum(0) = 1 + 0 = 1
  // sum(2) = 2 + sum(1) = 2 + 1 = 3
  // sum(3) = 3 + sum(3) = 3 + 3 = 6
  // sum(4) = 4 + sum(3) = 4 + 6 = 10
  // sum(5) = 5 + sum(4) = 5 + 10 = 15
  // sum(6) = 6 + sum(5) = 6 + 15 = 21
}