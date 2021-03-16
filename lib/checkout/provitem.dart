import 'package:flutter/material.dart';
import 'package:layout_kasir/home/cardsetting.dart';

class Item extends ChangeNotifier {
  List<MenuItem> selectedItem;
  int totalHarga;

  Item() {
    selectedItem = [];
    totalHarga = 0;
  }
  void add(MenuItem cardItem) {
    selectedItem.add(cardItem);
    totalHarga += cardItem.harga;
    notifyListeners();
  }

  void remove(int id) {
    selectedItem = selectedItem.where((element) => element.id != id).toList();
    totalHarga = 0;
    selectedItem.forEach((element) {
      totalHarga += element.harga;
    });
    notifyListeners();
  }
}
