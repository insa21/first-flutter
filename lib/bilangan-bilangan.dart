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
  int number = 0;
  void tekanTombol() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Klik klik",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Aplikasi sederhana"),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blue[900]!, Colors.purple]),
            ),
            height: 1000,
            width: 1000,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.toString(),
                  style: TextStyle(
                      fontSize: 10 + number.toDouble(), color: Colors.white),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.amber,
                    ),
                    onPressed: tekanTombol,
                    child: const Text("tambah bilangan"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
