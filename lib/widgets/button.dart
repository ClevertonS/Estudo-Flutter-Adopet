import 'package:adopet/constants/Cores.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  final Widget child;
  final Color bakcgroundColor;
  final double widthButton;
  void Function()? onPressed;
  Button(
      {Key? key,
      required this.child,
      this.bakcgroundColor = Cores.coral,
      this.onPressed,
      this.widthButton = 180})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          minimumSize: Size(widthButton, 40),
          primary: bakcgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 0),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)))),
      child: child,
    );
  }
}
