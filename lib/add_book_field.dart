import 'package:flutter/material.dart';
import 'package:my_book_app/add_new_book.dart';

class AddBookField extends StatefulWidget {
  final String labelText;
  final TextEditingController controller;

  const AddBookField({Key? key, required this.labelText, required this.controller,})
      : super(key: key);

  @override
  State<AddBookField> createState() => _AddBookFieldState();
}

class _AddBookFieldState extends State<AddBookField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            controller: widget.controller,
            decoration: InputDecoration(
              labelText: widget.labelText,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelStyle: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.black87),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.black87),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
