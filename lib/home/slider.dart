import 'package:flutter/material.dart';
import 'package:layout_kasir/checkout/bayar.dart';
import 'package:layout_kasir/checkout/number_ticker.dart';

class slider extends StatefulWidget {
  @override
  _sliderState createState() => _sliderState();
}

class _sliderState extends State<slider> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.1,
      minChildSize: 0.1,
      maxChildSize: 0.6,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
            color: Colors.white,
            child: ListView(
              controller: scrollController,
              children: [
                Image.asset(
                  "assets/tip.png",
                  height: 10.0,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    "TOTAL ",
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.purple[900],
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 6, bottom: 20),
                  child: Text(
                    "RP. ",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.purple[900],
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.grey),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Text(
                    "PESANAN",
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.purple[900],
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Row(
                    children: [
                      // Text("namaku bento"),
                      Container(
                        margin: EdgeInsets.only(left: 260, right: 10),
                        child: NumberTicker(),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(10)),
                ),
                new Container(
                    margin: EdgeInsets.only(
                        left: 50, right: 50, top: 30, bottom: 50),
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
                          "BAYAR",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ))
              ],
            ));
      },
    );
  }
}
