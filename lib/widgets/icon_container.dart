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
      child: Center(
        child: SvgPicture.asset(
          'assets/icon.svg',
          width: this.size * 1.9,
          height: this.size * 1.9,
        ),
      ),
    );
  }
}
