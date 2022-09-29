import 'package:flutter/material.dart';

class BooksReadScrollableWidget extends StatefulWidget {
  static const List<String> bookImages = [
    'images/1.jpg',
    'images/2.jpg',
    'images/3.png',
    'images/4.jpg',
    'images/5.jpeg',
    'images/6.jpg'
  ];
  const BooksReadScrollableWidget({Key? key}) : super(key: key);

  @override
  State<BooksReadScrollableWidget> createState() => _BooksReadScrollableWidget();
}

class _BooksReadScrollableWidget extends State<BooksReadScrollableWidget> {
  List<Widget> getPicture() {
    List<Widget> imageContainer = [];
    BooksReadScrollableWidget.bookImages.forEach((element) {
      imageContainer.add(Container(
          padding: const EdgeInsets.only(top: 10.0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          height: 150,
          width: 150,
          child: InkWell(
            onTap: (){
            },
            child: Image(
              image: AssetImage(element),
            ),
          )));
    });
    return imageContainer;
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      //thickness: 2.0,
      child: SingleChildScrollView(
        //padding: const EdgeInsets.only(top: 13.0),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: getPicture(),
        ),
      ),
    );
  }
}
