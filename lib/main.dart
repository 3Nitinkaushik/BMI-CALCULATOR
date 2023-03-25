import 'package:flutter/material.dart';
import 'themestyle.dart';
import 'inputpage.dart';

void main() {
  runApp(const Appbarmain());
}

class Appbarmain extends StatelessWidget {
  const Appbarmain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Center(
            child: Text(
              "BMI CALCULATOR",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: const Bodybmi(),
      ),
    );
  }


}
