import 'package:flutter/material.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(
          child: AlertDialog(
            icon: Image(
              image: AssetImage(
                "assets/images/computer.png",
              ),
            ),
            title: Text(
              "Page Not Found",
              style: TextStyle(color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
