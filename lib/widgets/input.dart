import 'package:adopet/constants/Cores.dart';
import 'package:adopet/widgets/text.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final TextEditingController? controller;
  final String title;
  final String ifIsEmptyValidator;
  final String hintText;

  const Input(
      {Key? key,
      required this.ifIsEmptyValidator,
      required this.title,
      required this.hintText,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: TextoH2(
            value: title,
            color: Cores.cinza,
          ),
        ),
        SizedBox(
          width: 312,
          height: 40,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(60, 0, 0, 0),
                      blurRadius: 2,
                      offset: Offset(0, 2))
                ]),
            child: TextFormField(
                controller: controller,
                textAlign: TextAlign.center,
                validator: ((value) {
                  if (value == null || value.isEmpty) {
                    return ifIsEmptyValidator;
                  }
                  return null;
                }),
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(fontSize: 14, color: Cores.cinza),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide.none),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 0,
                  ),
                  filled: true,
                  fillColor: Cores.cinzaClaro,
                )),
          ),
        )
      ],
    );
  }
}
