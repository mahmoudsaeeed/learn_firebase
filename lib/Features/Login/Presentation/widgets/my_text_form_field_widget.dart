import 'package:flutter/material.dart';

class MyTextFormFieldWidget extends StatelessWidget {
  const MyTextFormFieldWidget({
    super.key,
    this.myController,
    this.hintText,
    this.labelText,
    this.obscure = false,
    this.borderSide = const BorderSide(),
    this.borderRadius = const BorderRadius.all(Radius.circular(4.0)),
  });
  final TextEditingController? myController;
  final String? hintText, labelText;
  final bool obscure;
  final BorderSide borderSide;
  final BorderRadius borderRadius;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        controller: myController,
        obscureText: obscure,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: borderSide,
            borderRadius: borderRadius,
          ),
          hintText: hintText,
          labelText: labelText,
        ),
      ),
    );
  }
}
