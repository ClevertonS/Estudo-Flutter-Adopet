import 'dart:math';
import 'package:adopet/constants/Cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class BackgroundSvgLoginRegisterScreenCenter extends StatelessWidget {
  const BackgroundSvgLoginRegisterScreenCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String centerBackgroundSvg = "images/center_background.svg";
    return Stack(
      children: [
        Container(
          color: Cores.branco,
        ),
        Positioned(
            left: 70,
            top: 368,
            child: Transform(
                transform: Matrix4.rotationY(pi),
                child: SvgPicture.asset(centerBackgroundSvg))),
      ],
    );
  }
}
