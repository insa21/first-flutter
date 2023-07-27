import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flexibel Layout",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0, // remove the shadow from top of screen
          title: const Text("Flexibel Layout"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.red,
                      margin: const EdgeInsets.all(2),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.cyan,
                      margin: const EdgeInsets.all(2),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.purple,
                      margin: const EdgeInsets.all(2),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.indigo,
                      margin: const EdgeInsets.all(2),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.deepPurpleAccent,
                      margin: const EdgeInsets.all(2),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Column(
                      children: [
                        Flexible(
                          child: Container(
                            color: Colors.lightBlue,
                            margin: const EdgeInsets.all(2),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            color: Colors.blueGrey,
                            margin: const EdgeInsets.all(2),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      color: Colors.cyan,
                    ),
                  ),
                  Flexible(
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            margin: const EdgeInsets.all(2),
                            color: Colors.lightBlue,
                          ),
                        ),
                        Flexible(
                          child: Container(
                            margin: const EdgeInsets.all(2),
                            color: Colors.lightBlue[400],
                          ),
                        ),
                        Flexible(
                          child: Container(
                            margin: const EdgeInsets.all(2),
                            color: Colors.lightBlue[300],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      children: [
                        Flexible(
                          child: Container(
                            margin: const EdgeInsets.all(2),
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
