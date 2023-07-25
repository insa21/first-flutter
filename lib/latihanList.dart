import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Run the app widget in MyApp class
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan List'),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  child: const Text("Tambah"),
                  onPressed: () {
                    setState(() {
                      widgets.add(Text(
                        "data ke-" + counter.toString(),
                        style: const TextStyle(fontSize: 20),
                      ));
                      counter++;
                    });
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widgets.removeLast();
                        counter--;
                      });
                    },
                    child: Text("Hapus")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
