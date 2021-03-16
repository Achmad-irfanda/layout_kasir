import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:layout_kasir/checkout/provitem.dart';

class kembalian extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Bayar extends StatefulWidget {
  final int totalHarga;

  Bayar({this.totalHarga = 0});

  @override
  _BayarState createState() => _BayarState();
}

class _BayarState extends State<Bayar> {
  int kembalian = 0;

  @override
  void didChangeDependencies() {
    var item = Provider.of<Item>(context);
    print(item.totalHarga);
    super.didChangeDependencies();
  }

  void calculate([int bayar = 0]) {
    setState(() {
      kembalian = (bayar - widget.totalHarga);
    });
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerjumlah_bayar = new TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
          iconSize: 30,
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "Bayar",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      body: new ListView(
        children: [
          Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 8),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Sub Total Bayar",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.purple[900]),
                ),
              )),

          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            padding: EdgeInsets.all(17),
            child: Text(
              "RP. ${widget.totalHarga}",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.purple[900],
                  fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.purple[900]),
              borderRadius: BorderRadius.circular(10),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: TextField(
              keyboardType: TextInputType.number,
              // controller: controllerjumlah_bayar,

              onChanged: (txt) {
                calculate(txt == null ? 0 : int.parse(txt));
              },
              decoration: new InputDecoration(
                  prefix: Text(
                    "RP.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.purple[900]),
                  ),
                  labelText: "Jumlah Dibayarkan",
                  border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),

          Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 8),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Kembalian",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.purple[900]),
                ),
              )),

          Container(
            padding: EdgeInsets.all(17),
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "RP. $kembalian ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.purple[900]),
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.purple[900]),
              borderRadius: BorderRadius.circular(10),
            ),
          ),

          // button proses pembayran
          Container(
              margin: EdgeInsets.only(left: 50, right: 50, top: 30, bottom: 50),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.purple[900],
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                  child: new Text(
                    "PROSES PEMBAYARAN",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
