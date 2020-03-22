import 'dart:io';

main() {
  stdout.writeln('Whats is your name?');
  String name = stdin.readLineSync();
  print('My name is $name');

  // In-line comment
/*
Block comment
*/
/// Documentation


  /*
  * Data Types
  */
 int amount1 = 100;
 var amount2 = 200;

  print('Amount1: $amount1 | Amount2: $amount2 \n');

  double dAmount1 = 100.11;
  var dAmount2 = 200.22;

  print('Amount1: $dAmount1 | Amount2: $dAmount2 \n');

  String name1 = 'Pedro';
  var name2 = 'Coloma';

  print('My name is: $name1 $name2 \n');

  bool isItTrue1 = true;
  var isItTrue2 = false;

  print('isItTrue1: $isItTrue1 | isItTrue2: $isItTrue2');

  dynamic weakVariable = 100;
  print('WeakVariable 1: $weakVariable \n');

  weakVariable = "Dart Programming";
  print('WeakVariable 2: $weakVariable \n');

  // até null é um objeto em Dart

  // RAW String
  var s = r'In a raw string, not even \n gets special treatment.';
  print(s);

  // String interpolation
  var age = 23;
  var interpolatedString = "My age is $age";
  print(interpolatedString);

  var multiLineString = """
  This
  is a
  multiline
  string
  """;

  // Conversion
  var one = int.parse('1');
  assert(one == 1);

  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  String oneAsString = 1.toString();
  assert(oneAsString == "1");

  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == "3.14");

  // Constants
  const aConstNumb = 10;
  print(aConstNumb.runtimeType);

  // Null variables
  int nullVar;
  int NullVar2 = null;

  int num = 200;
  num++;

  if (num > 200 && num < 203) {
    print('200 to 203');
  }

  // Null aware operator
  // (?.), (??), (??=)

  var n = Num();
  int number;

  if (n != null) {
    number = n.num;
  }
  //equivalent to
  number = n?.num;

  // sets default value
  number = n?.num ?? 0;

  // If null, sets a value
  number = null;
  print(number ??= 1000);

  // Type test and conditional statements
  if (number is int) {
    print('Integer');
  } else if (number is String) {
    print('String');
  } else {
    print('None of the above');
  }

  /*
  * Loops
  */
  // Standard for loop
  for (var i = 1; i <= 3; ++i) {
    print(i);
  }

  // for-in loop
  var numbers = [1, 2, 3];
  for (var n in numbers) {
    print(n);
  }

  for (var i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }

  // for each loop
  numbers.forEach( (n) => print(n) );

  // While loop
  num = 5;
  while(num > 0) {
    print(num);
    num -= 1;
  }

  // do while loop
  num = 5;
  do {
    print(num);
    num -= 1;
  } while (num > 0);

  /*
  *  Collections
  */
  // List
  List names = ['Jack', 'Jill', 10, 100.1];
  print(names[0]);
  print(names.length);

  for (var n in names) {
    print(n);
  }

  List <String> justNames = ['Jack', 'Jill'];

  // by reference
  var names2 = names;

  // by value
  var names3 = [...names];

  // Set (unique collection of items)
  var halogens = {'Fluorine', 'chlorine', 'Fluorine'};
  Set <String> uniqueNames = {};

  // Map
  var gifts = {
    // key:   value
    'first': 'sddd',
    'second': 'edede',
    'third': 'ddd'
  };
  print(gifts['second']);

  var gifts2 = Map();
  gifts2['first'] = 'Mango';

  var gifts3 = {'first': 'mango'};

  /*
  *  Functions
  */
  dynamic square(var num) {
    return num * num;
  }

  void showOutput(var msg) {
    print(msg);
  }

  // arrow function
  dynamic square2(var num) => num * num;

  // anonymous function
  var fruits = ['apples', 'bananas', 'oranges'];
  fruits.forEach((item) {
    print(item);
  });

  dynamic sum(var num1, var num2) => num1 + num2;

  // var2 como opcional (precisa passar o `num2:` na chamada do método)
  dynamic sum2(var num1, {var num2}) => num1 + (num2 ?? 0);

  // deixando um valor padrão para o num2 (precisa passar o `num2:` na chamada do método)
  dynamic sum3(var num1, {var num2=0}) => num1 + num2;

  // var2 como opcional (não precisa passar o `num2:` na chamada do método)
  dynamic sum4(var num1, [var num2]) => num1 + (num2 ?? 0);

}

class Num {
  int num = 10;
}

