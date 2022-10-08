import 'package:hive/hive.dart';

class MyDataBase {
  final List<Map> books = [];

  final _myBox = Hive.box('my_box');

}