import 'package:flutter/material.dart';

class BooksWantToReadWidget extends StatelessWidget {
  const BooksWantToReadWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        height: 65,
        width: 310,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2.5),
            color: Colors.orangeAccent,
          borderRadius: const BorderRadius.all(
          Radius.circular(20.0),)
        ),
      ),
    );
  }
}
