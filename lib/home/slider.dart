import 'package:flutter/material.dart';
import 'package:layout_kasir/checkout/bayar.dart';
import 'package:provider/provider.dart';
import 'package:layout_kasir/checkout/provitem.dart';
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
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 6, bottom: 20),
                  child: Text(
                    "RP. ${Provider.of<Item>(context, listen: true).totalHarga}",
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
                Consumer<Item>(builder: (context, provitem, child) {
                  return Container(
                    height: 180,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: ListView.builder(
                        itemCount: provitem.selectedItem.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.all(15),
                            margin:
                                EdgeInsets.only(top: 10, left: 10, right: 10),
                            child: Row(
                              children: [
                                Text(provitem.selectedItem[index].nama,
                                    style: TextStyle(fontSize: 18)),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(left: 20, right: 10),
                                  child: NumberTicker(),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: Colors.grey[400]),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          );
                        }),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey[400]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                }),
                new Container(
                    margin: EdgeInsets.only(
                        left: 50, right: 50, top: 30, bottom: 30),
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
