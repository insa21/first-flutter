import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); //run the app widget in Myapp class
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Boxsize mandiri",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplikasi Coba-Coba size'),
          leadingWidth: 100,
          elevation: 2,
          centerTitle: true,
        ),
        body: const merah(),
      ),
    );
  }
}

class merah extends StatelessWidget {
  const merah({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 250),
        color: Colors.greenAccent,
        child: Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.redAccent[400],
                border: Border.all(
                  style: BorderStyle.solid,
                  width: 3,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ));
  }
}
