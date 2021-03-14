import 'package:flutter/material.dart';

// card yang menampung parsing datanya.
class card extends StatefulWidget {
  card({this.nama, this.harga});

  final String nama;
  final String harga;

  @override
  _cardState createState() => _cardState();
}

class _cardState extends State<card> {
  String item;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: InkWell(
        // onTap: () {

        // },
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin:
                    EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
                child: Column(
                  children: [
                    Text(
                      widget.nama,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin:
                    EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
                child: Text(
                  widget.harga,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
