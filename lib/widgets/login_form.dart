import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'input_text.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
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
              label: "CorreoElectronico/Email"),
          Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Colors.black12,
              ))),
              child: Row(children: <Widget>[
                Expanded(
                    //obscuretext es true para ocultar la contraseña
                    child: InputText(
                        obscureText: true,
                        borderEnabled: false,
                        label: "Contraseña/Password")),
                //se utiliza un textbutton para recuperar la contraseña
                TextButton(
                  child: Text(
                    "Recuperar Contraseña\nRecovery Password",
                    textAlign: TextAlign.center,
                  ),
                  style: TextButton.styleFrom(primary: Colors.red),
                  onPressed: (() {}),
                ),
              ]))
        ],
      ),
    );
  }
}
