import 'dart:math';
import 'package:adopet/constants/Cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class BackgroundSvgLoginRegisterScreen extends StatelessWidget {
  const BackgroundSvgLoginRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String topBackgroundSvg = "images/top_background.svg";
    const String centerBackgroundSvg = "images/center_background.svg";
    const String patasBackgroundSvg = "images/Patas.svg";
    return Stack(
      children: [
        Container(
          color: Cores.branco,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: SvgPicture.asset(topBackgroundSvg),
        ),
        Positioned(
            left: 70,
            top: 368,
            child: Transform(
                transform: Matrix4.rotationY(pi),
                child: SvgPicture.asset(centerBackgroundSvg))),
        Align(
          alignment: Alignment.topRight,
          child: SvgPicture.asset(patasBackgroundSvg),
        ),
      ],
    );
  }
}
