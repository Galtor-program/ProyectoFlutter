import 'dart:ffi';

import 'package:flutter/material.dart';

import '../widgets/circle.dart';

class HomePage extends StatefulWidget {
  

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color:Colors.white,
        child: Stack(
          children:<Widget>[
            Positioned(
              top: -70,
              left: -50,
              child: Circle(
                size: 300,
                )
            )
          ],
        ),
      ),
    );
  }
}