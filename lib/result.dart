import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'themestyle.dart';


class Result extends StatelessWidget {
  const Result(
      {required String this.bmiresult,
      required this.bmitext,
      required this.bmicomment});
  final String bmiresult;
  final String bmitext;
  final String bmicomment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(
          child: Text(
            "BMI CALCULATOR",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Text(
                  "YOUR RESULT",
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle, color: KBoxcolor),
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: sizedboxheight,
                        ),
                        Expanded(
                            child: Text(
                          bmitext,
                          style: textstyle(Colors.green),
                        )),
                        Expanded(
                          child: Text(
                            bmiresult,
                            style: TextStyle(
                                fontSize: 70, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          flex: -1,
                          child: Text(
                            "Normal BMI range:",
                            style: textstyle(Colors.white60),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '18.5-25kg/m2',
                            style: textstyle(Colors.white),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              bmicomment,
                              style: textstyle(
                                Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Go back!',
                    style: textstyle(Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
