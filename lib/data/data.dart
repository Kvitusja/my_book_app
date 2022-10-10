import 'package:hive/hive.dart';

class MyDataBase {
  final List<Map> books = [];

  final _myBox = Hive.box('my_box');

  void saveBooksMap() {
    _myBox.put('key', books);
    print('$books');
  }

  loadBooksMap() {
    final books = _myBox.get('key');
    print('$books');
    return books;

  }

}