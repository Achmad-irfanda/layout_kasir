import 'package:flutter/material.dart';

// card yang menampung parsing datanya.
// class card extends StatefulWidget {

//   card({this.nama, this.harga});

//   @override
//   _cardState createState() => _cardState();
// }

// class _cardState extends State<card> {
//   String item;

//   final Function onTap;

//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

// final Function onTap;
// const CardItem({Key key, this.onTap}) : super(key:key);

class MenuItem {
  final int id;
  final String nama;
  final int harga;

  MenuItem(this.id, this.nama, this.harga);
}

class CardItem extends StatefulWidget {
  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  final _menu = [
    MenuItem(1, "nasi liwet", 20000),
  ];

  List<MenuItem> _selectedItem = [];
  int totalHarga = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: ListView.builder(
        itemCount: _menu.length,
        itemBuilder: (context, index) => ListTile(
          onTap: () {
            setState(() {
              _selectedItem.add(_menu[index]);
              totalHarga = totalHarga + _menu[index].harga;
            });
          },
          title: Text(_menu[index].nama),
          subtitle: Text(_menu[index].harga.toString()),
        ),
      ),
    );
  }
}
