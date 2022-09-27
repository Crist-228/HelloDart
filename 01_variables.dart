//https://dart.cn/guides/language/language-tour
//default-value 在 Dart 中一切皆为对象，数字也不例外。
void default_value() {
  int lineCount = 0;
  assert(lineCount == 9);
  //assert(condition) 将会在 条件判断 为 false 时抛出一个异常。
}

void late_variables() {
  late String description;
  description = 'Feijoada';
  print(description);
}

void final_and_const() {
  final name = 'Bob'; //Without a type annotation
  final String nickname = 'Bobby';
//不能修改一个 final 变量的值
  const bar = 1000000;
  const double atm = 1.01325 * bar;
//在声明 const 变量时可以直接为其赋值，也可以使用其它的 const 变量为其赋值
  var foo = const [];
  // final bar = const [];
  const baz = [];
}

void main() {
  default_value();
  late_variables();
  final_and_const();
}
