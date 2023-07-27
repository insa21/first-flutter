import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.grey;
  Color color3 = Colors.amber;
  Color color4 = Colors.green;
  Color color5 = Colors.blue;
  Color color6 = Colors.black;
  bool isAccepted = false;
  late Color targetColor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Aplikasi Dragable',
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent[300],
        ),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue[900]!, Colors.purple]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Draggable<Color>(
                    data: color1,
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2,
                        shape: const StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color1.withOpacity(0.7),
                        shape: const StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color1,
                        shape: const StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                  ),
                  Draggable<Color>(
                    data: color3,
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2,
                        shape: const StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color3.withOpacity(0.7),
                        shape: const StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color3,
                        shape: const StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                  ),
                  Draggable<Color>(
                    data: color4,
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2,
                        shape: const StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color4.withOpacity(0.7),
                        shape: const StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color4,
                        shape: const StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                  ),
                  Draggable<Color>(
                    data: color5,
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2,
                        shape: const StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color5.withOpacity(0.7),
                        shape: const StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color5,
                        shape: const StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                  ),
                  Draggable<Color>(
                    data: color6,
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2,
                        shape: const StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color6.withOpacity(0.7),
                        shape: const StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color6,
                        shape: const StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                  ),
                ],
              ),
              DragTarget<Color>(
                onWillAccept: (value) => true,
                onAccept: (value) => {isAccepted = true, targetColor = value},
                builder: (context, candidates, rejected) {
                  return (isAccepted)
                      ? SizedBox(
                          width: 150,
                          height: 150,
                          child: Material(
                            color: targetColor,
                            shape: const StarBorder(),
                          ),
                        )
                      : SizedBox(
                          width: 150,
                          height: 150,
                          child: Material(
                            color: color2,
                            shape: const StarBorder(),
                          ),
                        );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
