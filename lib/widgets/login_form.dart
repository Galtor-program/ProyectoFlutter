import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../utils/responsive.dart';
import 'input_text.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  _submit() {}
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Positioned(
      //formlario de ingreso(login)
      bottom: 30,
      left: 20,
      right: 20,
      top: 400,
      child: Column(
        children: <Widget>[
          //para que despliegue teclado para correo electronico
          InputText(
            keyboardType: TextInputType.emailAddress,
            label: "Email",
            onChanged: (text) {
              print("email: $text");
            },
          ),

          SizedBox(height: responsive.dp(4)),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Colors.black12,
            ))),
            child: Row(
              children: <Widget>[
                Expanded(
                  //obscuretext es true para ocultar la contraseña
                  child: InputText(
                    obscureText: true,
                    borderEnabled: false,
                    label: "Password",
                    onChanged: (text) {
                      print("password: $text");
                    },
                  ),
                ),
                //se utiliza un textbutton para recuperar la contraseña
                TextButton(
                  child: Text(
                    "Recovery Password",
                    textAlign: TextAlign.center,
                  ),
                  style: TextButton.styleFrom(primary: Colors.red),
                  onPressed: (() {}),
                ),
              ],
            ),
          ),
          SizedBox(height: responsive.dp(5)),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              child: Text("Sign in"),
              onPressed: this._submit,
              style: TextButton.styleFrom(
                  primary: Colors.white, backgroundColor: Colors.blueAccent),
            ),
          ),
          SizedBox(height: responsive.dp(2)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Crear nuevo usuario"),
              TextButton(
                onPressed: () {},
                child: Text("Sing up"),
                style: TextButton.styleFrom(primary: Colors.red),
              ),
            ],
          ),
          SizedBox(height: responsive.dp(10)),
        ],
      ),
    );
  }
}
