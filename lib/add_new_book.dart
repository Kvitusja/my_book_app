import 'package:flutter/material.dart';

class AddNewBook extends StatefulWidget {
  const AddNewBook({Key? key,}) : super(key: key);

  @override
  State<AddNewBook> createState() => _AddNewBookState();
}

class _AddNewBookState extends State<AddNewBook> {
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
    ),);
  }
}
