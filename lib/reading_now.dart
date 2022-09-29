import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class ReadingNowWidget extends StatelessWidget {
  const ReadingNowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: DottedBorder(
        strokeWidth: 3,
        dashPattern: const [3, 3],
        borderType: BorderType.RRect,
        radius: const Radius.circular(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Container(
            height: 60,
            width: 300,
            child: const Center(
              child: Text(
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  'This is a book I read now'),
            ),
          ),
        ),
      ),
    );
  }
}
