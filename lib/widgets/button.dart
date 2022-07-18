import 'package:adopet/constants/Cores.dart';
import 'package:adopet/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Button extends StatelessWidget {
  final Widget child;
  final double widthButton;
  const Button({Key? key, required this.child, this.widthButton = 180})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          minimumSize: Size(widthButton, 40),
          primary: Cores.coral,
          padding: EdgeInsets.symmetric(horizontal: 0),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)))),
      child: child,
    );
  }
}
