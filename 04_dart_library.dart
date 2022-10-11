import 'dart:math';

void dartcore_numbers_numbers_collections_strings_and_more() {
  print('\n');
  print('#' * 40);
  print('数字、集合、字符串等');
  print('#' * 40);

  assert(int.parse('42') == 42);
  assert(int.parse('0x42') == 66);
  assert(double.parse('0.50') == 0.5);

  assert(int.parse('42', radix: 16) == 66);

  // Convert an int to a string.
  assert(42.toString() == '42');

  // Convert a double to a string.
  assert(123.456.toString() == '123.456');

  // Specify the number of digits after the decimal.
  assert(123.456.toStringAsFixed(2) == '123.46');

  // Specify the number of significant figures.
  assert(123.456.toStringAsPrecision(2) == '1.2e+2');
  assert(double.parse('1.2e+2') == 120.0);

  // Check whether a string contains another string.
  assert('Never odd or even'.contains('odd'));

  // Does a string start with another string?
  assert('Never odd or even'.startsWith('Never'));

  // Does a string end with another string?
  assert('Never odd or even'.endsWith('even'));

  // Find the location of a string inside a string.
  assert('Never odd or even'.indexOf('odd') == 6);

  // Grab a substring.
  assert('Never odd or even'.substring(6, 9) == 'odd');

  // Split a string using a string pattern.
  var parts = 'progressive web apps'.split(' ');
  assert(parts.length == 3);
  assert(parts[0] == 'progressive');

  // Get a UTF-16 code unit (as a string) by index.
  assert('Never odd or even'[0] == 'N');

  // Use split() with an empty string parameter to get
  // a list of all characters (as Strings); good for
  // iterating.
  for (final char in 'hello'.split('')) {
    print(char);
  }

  // Get all the UTF-16 code units in the string.
  // UTF 编码（https://www.jianshu.com/p/ba7fb4a651c7）
  var codeUnitList = 'Never odd or even'.codeUnits.toList();
  assert(codeUnitList[0] == 78);

  // Convert to uppercase.
  assert('web apps'.toUpperCase() == 'WEB APPS');

  // Convert to lowercase.
  assert('WEB APPS'.toLowerCase() == 'web apps');

  // Trim a string.
  assert('  hello  '.trim() == 'hello');

// Check whether a string is empty.
  assert(''.isEmpty);

// Strings with only white space are not empty.
  assert('  '.isNotEmpty);

  var greetingTemplate = 'Hello, NAME!';
  var greeting = greetingTemplate.replaceAll(RegExp('NAME'), 'Bob');

// greetingTemplate didn't change.
  assert(greeting != greetingTemplate);

  var sb = StringBuffer();
  sb
    ..write('Use a StringBuffer for ')
    ..writeAll(['efficient', 'string', 'creation'], ' ')
    ..write('.');
  // Cascade notation (https://stackoverflow.com/questions/49447736/list-use-of-double-dot-in-dart)

  var fullString = sb.toString();

  assert(fullString == 'Use a StringBuffer for efficient string creation.');

  // Here's a regular expression for one or more digits.
  var numbers = RegExp(r'\d+');

  var allCharacters = 'llamas live fifteen to twenty years';
  var someDigits = 'llamas live 15 to 20 years';

// contains() can use a regular expression.
  assert(!allCharacters.contains(numbers));
  assert(someDigits.contains(numbers));
}