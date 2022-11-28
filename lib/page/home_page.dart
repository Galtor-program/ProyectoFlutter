import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_api_rest/widgets/icon_container.dart';

import '../widgets/circle.dart';

class HomePage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
                top: -(size.width * 0.8) * 0.4,
                right: -(size.width * 0.8) * 0.2,
                child: Circle(
                  size: size.width * 0.8,
                  colors: [
                    Colors.blue,
                    Color.fromARGB(255, 77, 219, 255),
                  ],
                )),
            Positioned(
                top: -(size.width * 0.5) * 0.57,
                left: -(size.width * 0.5) * 0.2,
                child: Circle(
                  size: size.width * 0.6,
                  colors: [
                    Colors.lightBlue,
                    Color.fromARGB(255, 34, 121, 162),
                  ],
                )),
            Positioned(
              top: 100,
              child: IconContainer(),
            ),
          ],
        ),
      ),
    );
  }
}
