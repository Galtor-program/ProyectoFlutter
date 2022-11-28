import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      padding: EdgeInsets.all(20),
      child: Center(
        child: SvgPicture.asset(
          'assets/icon.svg',
          width: 80,
          height: 80,
        ),
      ),
    );
  }
}
