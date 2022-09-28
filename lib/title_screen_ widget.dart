import 'package:flutter/material.dart';

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
          ), //Container
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
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 165,
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(width: 2.0),
                          shape: const StadiumBorder(),
                        ),
                        child: const Text(
                          "Add new book",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
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
            ),
          ), //Container//Container
        ],
      ), //Stack//Center//SizedBox
    ); //Center
  }
}
