import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:layout_kasir/checkout/provitem.dart';
import 'package:layout_kasir/home/cardsetting.dart';
import 'package:layout_kasir/home/slider.dart';
import 'package:provider/provider.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String nama;
  String harga;
  String item;
  double total = 0;

  // void _pilihitem(String value) {
  //   setState(() {
  //     item = value;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Kasir'),
      ),
      body: ChangeNotifierProvider(
        create: (context) => Item(),
        child: Stack(
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
                              margin: EdgeInsets.only(
                                  right: 15, top: 20, bottom: 20),
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
                              margin: EdgeInsets.only(
                                  right: 15, top: 20, bottom: 20),
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
                          CardItem(
                            menuItem: MenuItem(
                              1,
                              ("sambel matah Chicken Ricebowl"),
                              20000,
                            ),
                          ),
                          CardItem(
                            menuItem: MenuItem(
                              2,
                              ("sambel matah"),
                              10000,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // total pembayaran
            BottomSlider(),
          ],
        ),
      ),
    );
  }
}
