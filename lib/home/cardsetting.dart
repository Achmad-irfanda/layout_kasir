import 'package:flutter/material.dart';
import 'package:layout_kasir/checkout/provitem.dart';
import 'package:provider/provider.dart';

class MenuItem {
  final String nama;
  final int harga;
  final int id;

  MenuItem(this.id, this.nama, this.harga);
}

class CardItem extends StatefulWidget {
  CardItem({ this.menuItem });

  final MenuItem menuItem;

  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: InkWell(
        onTap: () => {
          Provider.of<Item>(context, listen: false).add(
              MenuItem(widget.menuItem.id, widget.menuItem.nama, widget.menuItem.harga)
          ),
        },
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin:
                    EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
                child: Text(
                  widget.menuItem.nama,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin:
                    EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
                child: Text(
                 widget.menuItem.harga.toString(),
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class onTap {

//   Provider.of<Item>(context, listen: false)
//                 .add(CardItem[index], CardItem[index].harga);
// }
