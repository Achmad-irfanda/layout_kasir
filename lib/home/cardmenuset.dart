import 'package:flutter/material.dart';


// card yang menampung parsing datanya.
class card extends StatelessWidget {
  card({this.nama, this.harga});

  final String nama;
  final String harga;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: InkWell(
        // onTap: Navigator, (nanti ada disini)

        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Text(
                nama,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 30),
              child: Text(
                harga,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
