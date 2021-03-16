import 'package:flutter/material.dart';
import 'package:layout_kasir/checkout/bayar.dart';
import 'package:provider/provider.dart';
import 'package:layout_kasir/checkout/provitem.dart';
import 'package:layout_kasir/checkout/number_ticker.dart';

class BottomSlider extends StatefulWidget {
  @override
  _BottomSliderState createState() => _BottomSliderState();
}

class _BottomSliderState extends State<BottomSlider> {
  @override
  Widget build(BuildContext context) {

    var items = Provider.of<Item>(context);

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

                Container(
                    height: 180,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: ListView.builder(
                        itemCount: items.selectedItem.length,
                        itemBuilder: (context, index) {
                          var item = items.selectedItem[index];
                          return Container(
                            padding: EdgeInsets.all(15),
                            margin:
                                EdgeInsets.only(top: 10, left: 10, right: 10),
                            child: Row(
                              children: [
                                SingleChildScrollView(
                                  child: SizedBox(
                                    width: 250,
                                    child: Text(
                                        item.nama,
                                        style: TextStyle(fontSize: 18)),
                                  ),
                                ),
                                Spacer(),
                                NumberTicker()
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
                  ),
                new Container(
                    margin: EdgeInsets.only(
                        left: 50, right: 50, top: 30, bottom: 30),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.purple[900],
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Bayar(
                            totalHarga: items.totalHarga,
                          )),
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
