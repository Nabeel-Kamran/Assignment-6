void main() {
  // Q1. Create a list of names and print all names
  List<String> names = ['Alice', 'Bob', 'Charlie'];
  print('Q1: $names');

  // Q2. Create an empty list of type string called days, add 7 days
  List<String> days = [];
  days.addAll(['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']);
  print('Q2: $days');

  // Q3. Create a list of Days and remove one by one from the end
  List<String> daysToRemove = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
  while (daysToRemove.isNotEmpty) {
    print('Q3: Removed ${daysToRemove.removeLast()}');
  }

  // Q4. Create a list of numbers and get the smallest & greatest number
  List<int> numbers = [4, 1, 9, 23, 8, 2];
  print('Q4: Smallest: ${numbers.reduce((a, b) => a < b ? a : b)}, Greatest: ${numbers.reduce((a, b) => a > b ? a : b)}');

  // Q5. Create a map with name, phone keys and filter keys with length 4
  Map<String, String> contacts = {'John': '1234', 'Alex': '5678', 'Bob': '9012'};
  var filteredKeys = contacts.keys.where((key) => key.length == 4).toList();
  print('Q5: Keys with length 4: $filteredKeys');

  // Q6. Create map world with countries having capitalCity, currency, and language
  Map<String, Map<String, String>> world = {
    'USA': {'capitalCity': 'Washington D.C.', 'currency': 'USD', 'language': 'English'},
    'France': {'capitalCity': 'Paris', 'currency': 'Euro', 'language': 'French'}
  };
  print('Q6: Capital: ${world['USA']?['capitalCity']}, Currency: ${world['USA']?['currency']}');

  // Q7. Check if "fri" exists in expenses, if not, add it
  Map<String, double> expenses = {'sun': 3000.0, 'mon': 3000.0, 'tue': 3234.0};
  if (expenses.containsKey('fri')) {
    expenses['fri'] = 5000.0;
  } else {
    expenses['fri'] = 5000.0;
  }
  print('Q7: Expenses: $expenses');



  // Q9. Get the maximum value from a list of integers
  print('Q9: Maximum value: ${numbers.reduce((a, b) => a > b ? a : b)}');

  // Q10. Remove duplicates from a list of strings
  List<String> uniqueNames = names.toSet().toList();
  print('Q10: Unique names: $uniqueNames');

  // Q11. Print first n elements from the list
  int n = 3;
  List<int> firstN = numbers.take(n).toList();
  print('Q11: First $n elements: $firstN');

  // Q12. Print a new list with elements in reverse order
  List<String> reversedNames = List.from(names.reversed);
  print('Q12: Reversed names: $reversedNames');

  // Q13. Return only unique elements from a list
  List<int> uniqueNumbers = numbers.toSet().toList();
  print('Q13: Unique numbers: $uniqueNumbers');

  // Q14. Print first 10 natural numbers in reverse using while loop
  int i = 10;
  List<int> reverseNaturalNumbers = [];
  while (i > 0) {
    reverseNaturalNumbers.add(i);
    i--;
  }
  print('Q14: Reverse natural numbers: $reverseNaturalNumbers');

  // Q15. Filter out negative numbers from a list
  List<int> numbersWithNegatives = [10, -5, 15, -8, 20];
  List<int> positiveNumbers = numbersWithNegatives.where((number) => number > 0).toList();
  print('Q15: Positive numbers: $positiveNumbers');

  // Q16. Filter out odd numbers from a list
  List<int> evenNumbers = numbers.where((number) => number % 2 == 0).toList();
  print('Q16: Even numbers: $evenNumbers');

  // Q17. Create a new list with each value squared
  List<int> squaredNumbers = numbers.map((number) => number * number).toList();
  print('Q17: Squared numbers: $squaredNumbers');

  // Q18. Sum of odd numbers from 1 to 50 using a do-while loop
  int j = 1;
  int sum = 0;
  do {
    if (j % 2 != 0) {
      sum += j;
    }
    j++;
  } while (j <= 50);
  print('Q18: Sum of odd numbers from 1 to 50: $sum');

  // Q19. Check if the product is in stock
  Map<String, dynamic> product = {'name': 'Laptop', 'price': 1200, 'quantity': 5};
  print('Q19: ${product['quantity'] > 0 ? 'In stock' : 'Out of stock'}');

  // Q20. Check if car is a red sedan
  Map<String, dynamic> car = {'brand': 'Toyota', 'color': 'Red', 'isSedan': true};
  print('Q20: ${car['color'] == 'Red' && car['isSedan'] ? 'Match' : 'No match'}');

  // Q21. Count the number of digits in a given number
  int number = 12345;
  int count = 0;
  int temp = number;
  while (temp != 0) {
    temp ~/= 10;
    count++;
  }
  print('Q21: Number of digits: $count');

}
