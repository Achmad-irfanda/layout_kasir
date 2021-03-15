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
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            padding: EdgeInsets.all(20),
            child: Text(
              "count item",
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 0.1),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                    prefix: Text(
                      "RP. ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.purple[900]),
                    ),
                    labelText: "Jumlah Pembayaran",
                    border: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)))),
          ),
          Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Kembalian",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "RP. ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 0.1),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 50, right: 50, top: 30, bottom: 50),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.purple[900],
                onPressed: () {
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) => bayar(),
                    ),
                  );
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
