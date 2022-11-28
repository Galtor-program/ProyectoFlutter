import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_api_rest/utils/responsive.dart';
import 'package:flutter_api_rest/widgets/icon_container.dart';
import 'package:flutter_api_rest/widgets/login_form.dart';

import '../widgets/circle.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final double greenSize = responsive.wp(60);
    final double blueSize = responsive.wp(150);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
                top: -greenSize * 0.3,
                right: -greenSize * 0.1,
                child: Circle(
                  size: greenSize * 1.1,
                  colors: [
                    Color.fromARGB(255, 33, 243, 177),
                    Color.fromARGB(255, 31, 100, 97),
                  ],
                )),
            Positioned(
                top: -blueSize * 0.4,
                left: -blueSize * 0.2,
                child: Circle(
                  size: blueSize * 0.6,
                  colors: [
                    Colors.lightBlue,
                    Color.fromARGB(255, 34, 121, 162),
                  ],
                )),
            Positioned(
                top: 100,
                child: Column(
                  children: <Widget>[
                    IconContainer(size: responsive.wp(17)),
                    SizedBox(
                      height: responsive.dp(3),
                    ),
                    Text(
                      "Bienvenidos\nWelcome",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: responsive.dp(1.6),
                      ),
                    )
                  ],
                )),
            LoginForm()
          ],
        ),
      ),
    );
  }
}
