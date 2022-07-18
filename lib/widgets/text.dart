import 'package:adopet/constants/Cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextoH1 extends StatelessWidget {
  final String value;
  final String fontFamily;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final TextDecoration? decoration;

  const TextoH1(
      {Key? key,
      required this.value,
      this.fontFamily = "Poppins",
      this.color = Cores.branco,
      this.fontWeight = FontWeight.w500,
      this.decoration = TextDecoration.none,
      this.fontSize = 26})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: TextStyle(
        fontFamily: fontFamily,
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        decoration: decoration,
      ),
    );
  }
}

class TextoH2 extends StatelessWidget {
  final String value;
  final TextAlign textAlign;
  final String fontFamily;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final TextDecoration? decoration;

  const TextoH2(
      {Key? key,
      required this.value,
      this.textAlign = TextAlign.justify,
      this.fontFamily = "Poppins",
      this.color = Cores.branco,
      this.fontWeight = FontWeight.w400,
      this.decoration = TextDecoration.none,
      this.fontSize = 16})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: fontFamily,
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        decoration: decoration,
      ),
    );
  }
}
