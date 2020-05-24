import 'package:animepedia/header.dart';
import 'package:animepedia/middle.dart';
import 'package:flutter/material.dart';
import 'colours.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
          home: Scaffold(
        backgroundColor: gradientEndColor,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [gradientStartColor, gradientEndColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.7])),
                child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Header(),
                ),
                Middle(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(36.0),
          ),
          color: navigationColor,
        ),
        padding: const EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu,size: 32,color: Colors.white,),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search,size: 32,color: Colors.white,),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.people,size: 32,color: Colors.white,),
              onPressed: () {},
            ),
          ],
        ),
    ),
      ),
    );
  }
}