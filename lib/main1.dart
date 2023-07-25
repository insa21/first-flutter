import 'package:flutter/material.dart';

void main() {
  runApp(const Theapp());
}

class Theapp extends StatelessWidget {
  const Theapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my_app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Demo')),
        body: const Column(
          children: [
            HeroDota(
              heroId: '1',
              heroName: '   Mortred',
            ),
            HeroDota(
              heroId: '2',
              heroName:
                  '   Lúcio ', // trailing whitespace intentional to test text trimm
            ),
            HeroDota(
              heroId: '3',
              heroName: '  azima',
            ), // typo in class name should trigger error message on hovering over the widget
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class HeroDota extends StatelessWidget {
  const HeroDota({
    Key? key,
    required this.heroId,
    required this.heroName,
  }) : super(key: key);

  final String heroId;
  final String heroName;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(heroId),
            Text(heroName),
          ],
        ));
  }
}
