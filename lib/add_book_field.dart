import 'package:flutter/material.dart';

class AddBookField extends StatelessWidget {
  final String labelText;

  const AddBookField({Key? key, required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            decoration: InputDecoration(
                labelText: labelText,
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
                child: const Icon(color: Colors.black, Icons.add),
                onPressed: () {}),
          ),
        ),
      ],
    );
  }
}
