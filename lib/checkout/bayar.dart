import 'package:flutter/material.dart';

class bayar extends StatefulWidget {
  @override
  _bayarState createState() => _bayarState();
}

class _bayarState extends State<bayar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
          iconSize: 30,
        ),
        centerTitle: true,
        title: Text(
          "Bayar",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 20),
        margin: EdgeInsets.only(left: 20, right: 20, top: 38),
        child: new ListView(
          children: [
            
          ],
        ),
      ),
    );
  }
}
