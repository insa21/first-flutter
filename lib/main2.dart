import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp()); //run the app widget in Myapp class
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar layout Boxsize',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar Layout'),
        ),
        body: Center(
          child: Container(
            color: Colors.grey,
            child: const Row(
              children: [
                BlueBox(),
                BlueBox(),
                BlueBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  const BlueBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(
          color: Colors.black87,
          style: BorderStyle.solid,
          width: 2,
        ),
      ),
    );
  }
}
