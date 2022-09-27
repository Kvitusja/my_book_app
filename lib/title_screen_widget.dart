import 'package:flutter/material.dart';

class TitleScreenWidget extends StatelessWidget {
  const TitleScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "What a book?",
                        suffixIcon: Icon(Icons.search_outlined),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                          borderSide: BorderSide(width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                            borderSide: BorderSide(width: 2)),
                      ),
                    ),
                  ),
                )),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  border: Border.all(color: Colors.black, width: 2.5),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    bottomLeft: Radius.circular(16.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              child: const Text(
                                "Books read",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 145,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: const Text(
                            "Add new book",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: OutlinedButton.styleFrom(side: const BorderSide(width: 2.0)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 2.5),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    bottomLeft: Radius.circular(16.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
          ],
        ),
      ),
    );
  }
}
