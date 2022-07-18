import 'dart:ui';
import 'package:adopet/widgets/backgrounds/backgroundScreen1.dart';
import 'package:adopet/widgets/button.dart';
import 'package:adopet/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:adopet/constants/Cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String logo = "images/Logo.svg";
    return Stack(children: [
      Container(
        color: Cores.azul,
      ),
      const BackgroundClipperFirstScreen(),
      Center(
        heightFactor: 0.85,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 35),
              child: SvgPicture.asset(logo),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 27),
              child: TextoH1(value: "Boas-vindas!"),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: SizedBox(
                width: 248,
                child: TextoH2(
                    value:
                        "Que tal mudar sua vida adotando seu novo melhor amigo? Vem com a gente!",
                    textAlign: TextAlign.center),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Button(
                child: TextoH2(
                  value: "Já tenho conta",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Button(
                child: TextoH2(
              value: "Quero me cadastrar",
              fontWeight: FontWeight.w600,
            ))
          ],
        ),
      ),
    ]);
  }
}
