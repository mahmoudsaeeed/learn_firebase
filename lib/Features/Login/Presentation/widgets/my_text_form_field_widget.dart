import 'package:flutter/material.dart';

class MyTextFormFieldWidget extends StatefulWidget {
  const MyTextFormFieldWidget({
    super.key,
    this.myController,
    this.hintText,
    this.labelText,
    this.borderSide = const BorderSide(),
    this.borderRadius = const BorderRadius.all(Radius.circular(4.0)),
    this.isPasswordField = false,
  });
  final TextEditingController? myController;
  final String? hintText, labelText;
  final bool isPasswordField;
  final BorderSide borderSide;
  final BorderRadius borderRadius;

  @override
  State<MyTextFormFieldWidget> createState() => _MyTextFormFieldWidgetState();
}

class _MyTextFormFieldWidgetState extends State<MyTextFormFieldWidget> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        controller: widget.myController,
        obscureText: widget.isPasswordField ? obscure : false,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: widget.borderSide,
            borderRadius: widget.borderRadius,
          ),
          hintText: widget.hintText,
          labelText: widget.labelText,
          suffixIcon: widget.isPasswordField
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      obscure = !obscure;
                    });
                  },
                  icon: obscure
                      ? const Icon(Icons.lock)
                      : const Icon(Icons.lock_open))
              : null,
        ),
      ),
    );
  }
}
