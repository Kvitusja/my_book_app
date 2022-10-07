import 'package:flutter/material.dart';

import 'add_book_field.dart';

class AddNewBook extends StatefulWidget {
  const AddNewBook({
    Key? key,
  }) : super(key: key);

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
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return const AddBookField(
              labelText: "Book name",
            );
          }),
    );
  }
}


/*
Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Book name',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelStyle: const TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: FloatingActionButton(
                  heroTag: '1',
                  elevation: 0,
                  backgroundColor: Colors.orangeAccent,
                  child:const Icon(
                      color: Colors.black,
                      Icons.add),
                  onPressed: (){}),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Author',
                  floatingLabelStyle: const TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: FloatingActionButton(
                  heroTag: '3',
                  elevation: 0,
                  backgroundColor: Colors.orangeAccent,
                  child:const Icon(
                      color: Colors.black,
                      Icons.add),
                  onPressed: (){}),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'My feedback',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelStyle: const TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: FloatingActionButton(
                  heroTag: '2',
                  elevation: 0,
                  backgroundColor: Colors.orangeAccent,
                  child:const Icon(
                      color: Colors.black,
                      Icons.add),
                  onPressed: (){}),
            ),
          ),
        ],
      ),
 */