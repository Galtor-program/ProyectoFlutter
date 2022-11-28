import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 20,
      right: 20,
      top: 300,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration:
                InputDecoration(labelText: "Nombre de Usuario/UserName"),
          ),
        ],
      ),
    );
  }
}
