import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

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
      body: Column(
        children: [
          DottedBorder(
            strokeWidth: 3,
            dashPattern: const [3, 2],
            borderType: BorderType.RRect,
            radius: const Radius.circular(16.0),
            child: const TextField(),
          ),
          Container(
              height: 65,
              width: 310,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2.5),
                  color: Colors.orangeAccent,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),)
              ),
              child: const TextField()),
      DottedBorder(
        strokeWidth: 3,
        dashPattern: const [3, 2],
        borderType: BorderType.RRect,
        radius: const Radius.circular(16.0),
        child: const TextField(),
      ),
        ],
      ),
    );
  }
}
