import 'package:flutter/material.dart';
import 'package:note/core/constants.dart';

class MyHomeView extends StatelessWidget {
  const MyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          children: [
            const Text("HomeView"),
            ElevatedButton(
                onPressed: () {
                  
                  Navigator.pushNamed(context, loginViewName);
                },
                child: const Text("login"))
          ],
        ),
      ),
    );
  }
}
