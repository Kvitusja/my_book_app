import 'package:flutter/material.dart';
import 'package:my_book_app/books_want_to_read_widget.dart';
import 'package:my_book_app/reading_now.dart';
import 'add_new_book.dart';
import 'books_read_scrollable_widget.dart';
import 'package:dotted_border/dotted_border.dart';


class TitleScreenWidget extends StatefulWidget {
  const TitleScreenWidget({Key? key}) : super(key: key);

  @override
  State<TitleScreenWidget> createState() => _TitleScreenWidgetState();
}

class _TitleScreenWidgetState extends State<TitleScreenWidget> {
  TextEditingController cleanSearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        children: <Widget>[
          Container(
            width: 300,
            height: 300,
            color: Colors.white,
            child: Stack(
              fit: StackFit.expand,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.white,
                ),
                Positioned(
                  top: 60,
                  left: 54,
                  child: Container(
                    height: 60,
                    width: 267,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      border: Border.all(color: Colors.black, width: 2.5),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 65,
                  child: Container(
                    height: 50,
                    width: 255,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 2.5),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: TextField(
                      controller: cleanSearchController,
                      decoration: InputDecoration(
                        hintText: "What a book?",
                        suffixIcon: IconButton(
                            onPressed: () {
                              cleanSearchController.clear();
                            },
                            icon: const Icon(Icons.clear)),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                          //borderSide: BorderSide(width: 2),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned (
            top: 148,
            left: 60,
            child: DottedBorder(
              strokeWidth: 3,
              dashPattern: const [3, 2],
              borderType: BorderType.RRect,
              radius: const Radius.circular(16.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AddNewBook()),
                  );
                },
                child: const Text(
                  "Add new book",
                  style: TextStyle(
                    color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),//Container
          Positioned(
            bottom: 220,
            child: Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                border: Border.all(color: Colors.black, width: 2.5),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(36.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "Books read",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 165,
                  ),
                  BooksReadScrollableWidget(),
                ],
              ),
            ),
          ),
          Positioned(
            top: 430,
            child: Container(
              width: 400,
              height: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 2.5),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(36.0),
                ),
              ),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 18.0, top: 12),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                          style: TextStyle(fontWeight: FontWeight.bold),
                          "Reading now"),
                    ),
                  ),
                  ReadingNowWidget(),
                  Padding(
                    padding: EdgeInsets.only(left: 18.0, top: 18),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                          style: TextStyle(fontWeight: FontWeight.bold),
                          "Want to read"),
                    ),
                  ),
                  BooksWantToReadWidget(),
                ],
              ),
            ),
          ), //Container//Container
        ],
      ), //Stack//Center//SizedBox
    ); //Center
  }
}

