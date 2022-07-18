import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackgroundClipperFirstScreen extends StatelessWidget {
  const BackgroundClipperFirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String centerBackgroundSvg = "images/center_background.svg";
    const String topBackgroundSvg = "images/top_background.svg";
    const String petBackgroundSvg = "images/pets_background.svg";
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: SvgPicture.asset(topBackgroundSvg),
        ),
        Positioned(
          bottom: 188,
          right: 0,
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
