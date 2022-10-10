import 'package:flutter/material.dart';

import 'data/data.dart';

class BookPage extends StatefulWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  List<Map> books = [];
  MyDataBase myDataBase = MyDataBase();

  @override
  void initState() {
    books = myDataBase.loadBooksMap();
    super.initState();
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
          itemCount: books.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(books.elementAt(index)['Book name'],),
                ),
                Container(
                  child: Text(books.elementAt(index)['Book author'],),
                ),
                Container(
                  child: Text(books.elementAt(index)['My feedback'],),
                )
              ],
            );

            // return ListTile(
            //   title: Text(books.elementAt(index)['Book name']),
            //   subtitle: Text(books.elementAt(index)['Book author']),
            //   leading: Text(books.elementAt(index)['My feedback']),
            // );
          }),
    );
  }
}
