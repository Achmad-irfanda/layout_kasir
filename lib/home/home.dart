import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:layout_kasir/checkout/bayar.dart';
import 'package:layout_kasir/checkout/number_ticker.dart';
import 'package:layout_kasir/home/cardsetting.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String nama;
  String harga;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          //  RaisedButton.icon(onPressed: null, icon:  , label: null)
        ],
        title: Text('Kasir'),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              // searchbar
              new Container(
                  padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
                  margin: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child:
                            Text('Cari Menu', style: TextStyle(fontSize: 18)),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(10))),

              // kolom untuk menampung bagian kartegori
              new Container(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'KATEGORI',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),

                    // row untuk menampung item kasir
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(
                                left: 20, right: 15, top: 20, bottom: 20),
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            child: Text(
                              'Semua',
                              style: TextStyle(fontSize: 18),
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.purple[900],
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30))),
                        Container(
                            margin:
                                EdgeInsets.only(right: 15, top: 20, bottom: 20),
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            child: Text(
                              'Makanan',
                              style: TextStyle(fontSize: 18),
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30))),
                        Container(
                            margin:
                                EdgeInsets.only(right: 15, top: 20, bottom: 20),
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            child: Text(
                              'Minuman',
                              style: TextStyle(fontSize: 18),
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30))),
                      ],
                    ),
                  ],
                ),
              ),

              new Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 600),
                child: Column(
                  children: [
                    GridView.count(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      crossAxisCount: 2,
                      childAspectRatio: 6 / 3,
                      children: [
                        card(
                            nama: "Sambel Matah Chicken Ricebowl ",
                            harga: "20.00"),
                        card(nama: "Chicken Ricebowl", harga: "20.00")
                      ],
                    ),
                    GridView.count(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      crossAxisCount: 2,
                      childAspectRatio: 6 / 3,
                      children: [
                        card(nama: "Tuna Ricebowl", harga: "20.000"),
                        card(nama: "Nasi Goreng Spesial", harga: "20.00")
                      ],
                    ),
                    GridView.count(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      crossAxisCount: 2,
                      childAspectRatio: 6 / 3,
                      children: [
                        card(nama: "Espresso", harga: "15.000"),
                        card(nama: "Caffe Latte", harga: "20.00")
                      ],
                    ),
                    GridView.count(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      crossAxisCount: 2,
                      childAspectRatio: 6 / 3,
                      children: [
                        card(nama: "Hot Ice Lemon Tea", harga: "8.000"),
                        card(nama: "Ice Butterfly Coffe", harga: "20.00")
                      ],
                    ),
                    GridView.count(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      crossAxisCount: 2,
                      childAspectRatio: 6 / 3,
                      children: [
                        card(nama: "Hot Ice Lemon Tea", harga: "8.000"),
                        card(nama: "Ice Butterfly Coffe", harga: "20.00")
                      ],
                    ),
                    GridView.count(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      crossAxisCount: 2,
                      childAspectRatio: 6 / 3,
                      children: [
                        card(nama: "Hot Ice Lemon Tea", harga: "8.000"),
                        card(nama: "Ice Butterfly Coffe", harga: "20.00")
                      ],
                    ),
                    GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      childAspectRatio: 6 / 3,
                      children: [
                        card(nama: "Hot Ice Lemon Tea", harga: "8.000"),
                        card(nama: "Ice Butterfly Coffe", harga: "20.00")
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          // item kasir

          DraggableScrollableSheet(
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
                          "TOTAL",
                          style: TextStyle(
                              fontSize: 19,
                              color: Colors.purple[900],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 20, top: 6, bottom: 20),
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
                              padding:
                                  const EdgeInsets.only(top: 10.0, bottom: 10),
                              child: new Text(
                                "BAYAR",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ))
                    ],
                  ));
            },
          ),
        ],
      ),
    );
  }
}
