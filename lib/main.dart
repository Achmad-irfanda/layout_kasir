import 'package:flutter/material.dart';
import 'package:layout_kasir/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.purple[900],
        accentColor: Colors.blue[400],
      ),
      home: homepage(),
    );
  }
}
