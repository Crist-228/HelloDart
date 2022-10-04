//https://dart.cn/guides/language/language-tour#built-in-types
void numbers(){
  // String -> int
  var one = int.parse("1");
  assert(one == 1);
  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');
}

//== 运算符负责判断两个对象的内容是否一样，如果两个字符串包含一样的字符编码序列，则表示相等。
void strings(){
  //你可以使用 + 运算符或并列放置多个字符串来连接字符串：
  var s1 = 'String '
    'concatenation'
    " works even over line breaks.";
  assert(s1 ==
    'String concatenation works even over '
        'line breaks.');
  var s2 = 'The + operator ' + 'works, as well.';
  assert(s2 == 'The + operator works, as well.');
  //使用三个单引号或者三个双引号也能创建多行字符串：
  var s3 = '''
  You can create
  multi-line strings like this one.
  ''';
  var s4 = """This is also a
  multi-line string.""";
}

//Dart 中的列表字面量是由逗号分隔的一串表达式或值并以方括号 ([]) 包裹而组成的。
void lists(){
  //你可以使用扩展操作符（...）将一个 List 中的所有元素插入到另一个 List 中
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  assert(list2.length == 4);
  //Dart 还同时引入了 集合中的 if 和 集合中的 for 操作，在构建集合时，可以使用条件判断 (if) 和循环 (for)
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
}

//使用 add() 方法或 addAll() 方法向已存在的 Set 中添加项目
void sets(){
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  assert(elements.length == 5);
}

//使用 Map 的构造器创建 Map
void maps(){
  var gifts = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var nobleGases = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  assert(gifts['first'] == 'golden rings');
}

void main(){
  numbers();
  strings();
  lists();
  sets();
  maps();
}