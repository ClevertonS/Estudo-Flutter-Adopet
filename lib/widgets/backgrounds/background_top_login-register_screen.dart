import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class BackgroundSvgLoginRegisterScreenTop extends StatelessWidget {
  const BackgroundSvgLoginRegisterScreenTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String topBackgroundSvg = "images/top_background.svg";
    const String patasBackgroundSvg = "images/Patas.svg";
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: SvgPicture.asset(topBackgroundSvg),
        ),
        Align(
          alignment: Alignment.topRight,
          child: SvgPicture.asset(patasBackgroundSvg),
        ),
      ],
    );
  }
}
