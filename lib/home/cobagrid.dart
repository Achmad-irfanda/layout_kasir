import 'package:flutter/material.dart';


class BelajarGridView extends StatelessWidget {
  final List alphabet = [
    "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("belajarFlutter.com"),
          ),
          body: 
          
          GridView(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            children: <Widget>[
              GridView.count(
                crossAxisCount: 3,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.all(20),
                children: 
                List.generate(alphabet.length, (index) {
                  return Container(
                    height: 100,
                    child: Card(
                      child: Center(
                          child: Text(alphabet[index],
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20))),
                      color: Colors.deepPurpleAccent,
                    ),
                  );
                }),
              ),
              FlutterLogo(),
              FlutterLogo(),
              FlutterLogo(),
              FlutterLogo(),
            ],
          )
          
          ),
    );
  }
}