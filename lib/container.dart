import 'package:flutter/material.dart';

void main() {
  runApp(const ContainerDemo());
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container Demo'),
        ),
        body: Container(
          // margin: EdgeInsets.fromLTRB(10, 15, 20, 25),
          // padding: EdgeInsets.all(10),
          color: Colors.white,
          child: Container(
            padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blue[900]!, Colors.purple]),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadiusDirectional.circular(20),
              ),
              child: Container(),
            ),
          ),
        ),
      ),
    );
  }
}
