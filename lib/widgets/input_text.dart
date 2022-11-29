import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  // Para definir tipo de ingreso por teclado, ocultar contraseña y bordes.
  final String label;
  final TextInputType keyboardType;
  final bool obscureText, borderEnabled;
  const InputText(
      {super.key,
      this.label = '',
      this.keyboardType = TextInputType.text,
      this.borderEnabled = true,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: this.keyboardType,
      obscureText: this.obscureText,
      decoration: InputDecoration(
          labelText: this.label,
          border: this.borderEnabled ? null : InputBorder.none,
          labelStyle: TextStyle(color: Color.fromARGB(255, 50, 105, 78))),
      style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500),
    );
  }
}
