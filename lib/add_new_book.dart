import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:my_book_app/book_page.dart';
import 'package:my_book_app/books_want_to_read_widget.dart';
import 'package:my_book_app/data/data.dart';

import 'add_book_field.dart';

class AddNewBook extends StatefulWidget {
  const AddNewBook({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNewBook> createState() => _AddNewBookState();
}

class _AddNewBookState extends State<AddNewBook> {
  TextEditingController bookNameEditingController = TextEditingController();
  TextEditingController authorNameEditingController = TextEditingController();
  TextEditingController myFeedbackEditingController = TextEditingController();
  final List<TextEditingController> controllers = [];

  final _myBox = Hive.box('my_box');
  MyDataBase myDataBase = MyDataBase();

  final List<String> labelText = ['Book name', 'Book author', 'My feedback'];

  @override
  void initState() {
    controllers.addAll([
      bookNameEditingController,
      authorNameEditingController,
      myFeedbackEditingController
    ]);

    super.initState();
  }

  void saveNewBook() {
    setState(() {
      var bookFieldsData = {
        labelText.elementAt(0): bookNameEditingController.text,
        labelText.elementAt(1): authorNameEditingController.text,
        labelText.elementAt(2): myFeedbackEditingController.text
      };
      myDataBase.books.add(bookFieldsData);
      myDataBase.saveBooksMap();

      bookNameEditingController.clear();
      authorNameEditingController.clear();
      myFeedbackEditingController.clear();

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "My book app",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return AddBookField(
              controller: controllers.elementAt(index),
              labelText: labelText.elementAt(index),
            );
          }),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
              elevation: 0,
              backgroundColor: Colors.orangeAccent,
              child: const Icon(color: Colors.black, Icons.add),
              onPressed: () {
                saveNewBook();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BookPage()),
                );
              }),
        ),
      ),
    );
  }
}


