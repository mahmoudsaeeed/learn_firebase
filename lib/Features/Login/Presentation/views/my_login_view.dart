import 'package:flutter/material.dart';

import '../widgets/my_login_form_widget.dart';

class MyLoginView extends StatelessWidget {
  const MyLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Container(
        child: const SingleChildScrollView(
          child: MyLoginFormWidget(),
        ),
      ),
    );
  }
}
