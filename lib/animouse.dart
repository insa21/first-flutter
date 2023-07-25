// import 'package:belajar/bilangan-bilangan.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp()); // Run the app widget in MyApp class
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String messege = "Ini adalah Text";

//   // void tombolDitekan() {
//   //   setState(() {
//   //     messege = ("Tombol sudah ditekan");
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Anonimouse Method'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(messege),
//               ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       messege = "Tombol sudah ditekan";
//                     });
//                   },
//                   child: const Text("Tekan Tombol")),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

void main() {
  runApp(const MyApp2());
}

class MyApp2 extends StatefulWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  String pesan = "Ini adalah text awal";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: const Text("Anonimous Method2"),
          backgroundColor: Colors.red[900],
        ),
        body: Center(
            child: Container(
          padding: const EdgeInsets.all(60),
          margin: const EdgeInsets.all(80),
          color: Colors.white,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(pesan),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (pesan == 'Ini adalah text awal') {
                      pesan = "Text sudah ditekan";
                    } else
                      pesan == ('Text sudah ditekan');
                    {
                      pesan = "Text sudah ditekan";
                    }
                  });
                },
                child: const Text("tekan"))
          ]),
        )),
      ),
    );
  }
}
