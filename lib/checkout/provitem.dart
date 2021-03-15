import 'package:flutter/material.dart';
import 'package:layout_kasir/home/cardsetting.dart';

class Item extends ChangeNotifier {
  List<CardItem> selectedItem;
  int totalHarga;

  Item(){
    selectedItem=[];
    totalHarga = 0;
  }
  void add (CardItem cardItem, int harga){
   selectedItem.add(cardItem);
    totalHarga += harga;
    notifyListeners();
  }
}

