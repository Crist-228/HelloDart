//https://dart.cn/guides/language/language-tour#function
//函数可以有两种形式的参数：必要参数 和 可选参数。
//必要参数定义在参数列表前面，可选参数则定义在必要参数后面。可选参数可以是 命名的 或 位置的。
String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

// Run the app like this: dart args.dart 1 test
/*void main(List<String> arguments) {
  print(arguments);

  assert(arguments.length == 2);
  assert(int.parse(arguments[0]) == 1);
  assert(arguments[1] == 'test');
}*/

//函数是一级对象.可以将函数作为参数传递给另一个函数。
var list = [1, 2, 3];
void printElement(int element) {
  print(element);
}

//你可以将匿名方法赋值给一个变量然后使用它，比如将该变量添加到集合或从中删除。
void anonymous_functions() {
  const list = ['apples', 'bananas', 'oranges'];
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });
}

//Dart 是词法有作用域语言，变量的作用域在写代码的时候就确定了，大括号内定义的变量只能在大括号内访问，与 Java 类似。
bool topLevel = true;
void lexical_scope() {
  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }
}

//函数可以封闭定义到它作用域内的变量。
void lexical_closures() {
  Function makeAdder(int addBy) {
    return (int i) => addBy + i;
  }

  var add2 = makeAdder(2);
  // Create a function that adds 4.
  var add4 = makeAdder(4);
  assert(add2(3) == 5);
  assert(add4(3) == 7);
}

//测试函数是否相等.下面是顶级函数，静态方法和示例方法相等性的测试示例
class A {
  static void bar() {} // A static method
  void baz() {} // An instance method
}

void testing_functions_for_equality() {
  void foo() {} // A top-level function
  Function x;
  // Comparing top-level functions.
  x = foo;
  assert(foo == x);

  // Comparing static methods.
  x = A.bar;
  assert(A.bar == x);

  // Comparing instance methods.
  var v = A(); // Instance #1 of A
  var w = A(); // Instance #2 of A
  var y = w;
  x = w.baz;

  // These closures refer to the same instance (#2),
  // so they're equal.
  assert(y.baz == x);

  // These closures refer to different instances,
  // so they're unequal.
  assert(v.baz != w.baz);
}

void main() {
  assert(say('Bob', 'Howdy') == 'Bob says Howdy');
  assert(say('Bob', 'Howdy', 'smoke signal') ==
      'Bob says Howdy with a smoke signal');
  list.forEach(printElement);
  anonymous_functions();
  lexical_scope();
  lexical_closures();
  testing_functions_for_equality();
}
