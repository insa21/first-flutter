import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Text Decoration",
            style: TextStyle(
              fontFamily: "JetBrainsMono",
            ),
            // centerTitle: true,
          ),
        ),
        body: const Center(
          child: Text(
            "Ini adalah Text",
            style: TextStyle(
              fontFamily: "JetBrainsMono",
              fontSize: 24,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.overline,
              decorationColor: Colors.red,
              decorationThickness: 5,
              decorationStyle: TextDecorationStyle.dashed,
              color: Colors.blueAccent,
            ),
          ),
        ),
      ),
    );
  }
}
