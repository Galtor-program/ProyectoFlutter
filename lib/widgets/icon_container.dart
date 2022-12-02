import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconContainer extends StatelessWidget {
  final double size;
  const IconContainer({Key? key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.size,
      height: this.size,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(17),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 10),
        ],
      ),
      child: Center(
        child: SvgPicture.asset(
          'assets/icon.svg',
          width: this.size * 0.9,
          height: this.size * 0.9,
        ),
      ),
    );
  }
}
