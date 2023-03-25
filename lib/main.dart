import 'package:flutter/material.dart';
import 'themestyle.dart';
import 'inputpage.dart';

void main() {
  runApp(appbarmain());
}

class appbarmain extends StatelessWidget {
  const appbarmain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Center(
            child: Text(
              "BMI CALCULATOR",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Bodybmi(),
      ),
    );
  }


}
