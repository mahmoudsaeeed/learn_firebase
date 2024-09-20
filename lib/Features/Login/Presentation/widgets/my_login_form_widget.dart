import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:note/Features/Login/Presentation/widgets/my_text_form_field_widget.dart';
import 'package:note/core/constants.dart';

class MyLoginFormWidget extends StatefulWidget {
  const MyLoginFormWidget({super.key});

  @override
  State<MyLoginFormWidget> createState() => _MyLoginFormWidgetState();
}

class _MyLoginFormWidgetState extends State<MyLoginFormWidget> {
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController!.dispose();
    passwordController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          MyTextFormFieldWidget(
            labelText: "email",
            myController: emailController,
          ),
          const Gap(40),
          MyTextFormFieldWidget(
            labelText: "password",
            myController: passwordController,
            obscure: true,
          ),
          _loginButton(
            onPressed: () {
              debugPrint("email is ${emailController!.text}\npassword is ${passwordController!.text}");
            },
          ),
        ],
      ),
    );
  }
}

ElevatedButton _loginButton({void Function()? onPressed}) {
  return ElevatedButton(onPressed: onPressed, child: const Text("Login"));
}
