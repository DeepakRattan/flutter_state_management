import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String data = 'my data';
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (BuildContext context) => data,
      child: MaterialApp(
        home: Scaffold(
          body: Level1(),
        ),
      ),
    );
  }
}

class Level1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level2(),
    );
  }
}

class Level2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level3(),
    );
  }
}

class Level3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        Provider.of(context),
        style: TextStyle(fontSize: 30.0),
      ),
    );
  }
}
