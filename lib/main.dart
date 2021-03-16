import 'package:flutter/material.dart';
import 'package:layout_kasir/checkout/bayar.dart';
import 'package:layout_kasir/checkout/provitem.dart';
import 'package:layout_kasir/home/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(provider());
}

class provider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Item>(
          create: (_) =>  Item(),
        ),
        ],
      child: MyApp(),
    );
  }
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
