@JS('Slick')
library maps;

import 'package:js/js.dart';

@anonymous
@JS()
class Grid {
  external Grid(String selector, List<Map> items, List<Column> columns, Options options);
}

@anonymous
@JS()
class Options {
  external bool get enableColumnReorder;
  external factory Options({bool enableColumnReorder});
}

@anonymous
@JS()
class Column {
  external String get id;
  external String get name;
  external String get field;
  external factory Column({String id, String name, String field});
}