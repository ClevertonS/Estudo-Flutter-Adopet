import 'dart:ui';
import 'package:adopet/widgets/backgrounds/backgroundScreen1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:adopet/constants/Cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class firstScreen extends StatelessWidget {
  const firstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String logo = "images/Logo.svg";
    return Stack(children: [
      Container(
        color: Cores.azul,
      ),
      BackgroundClipperFirstScreen(),
      Center(
        heightFactor: 0.47,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: SvgPicture.asset(logo),
            ),
            Text(
              "Boas Vindas",
              style: TextStyle(color: Cores.branco),
            )
          ],
        ),
      ),
    ]);
  }
}
