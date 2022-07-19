import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackgroundSvgFirstScreen extends StatelessWidget {
  const BackgroundSvgFirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String topBackgroundSvg = "images/top_background.svg";
    const String centerBackgroundSvg = "images/center_background.svg";
    const String petBackgroundSvg = "images/pets_background.svg";
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: SvgPicture.asset(topBackgroundSvg),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: SvgPicture.asset(centerBackgroundSvg),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SvgPicture.asset(petBackgroundSvg),
        ),
      ],
    );
  }
}
