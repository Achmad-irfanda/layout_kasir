import 'package:flutter/material.dart';

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
          subtitle: Paddi(child: Text(_menu[index].harga.toString())),
        ),
      ),
    );
  }
}
