import 'package:flutter/material.dart';
import 'constants.dart';
import 'themestyle.dart';
import 'roundrectangle.dart';
import 'iconcontent.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'roundbutton.dart';
import 'textfield.dart';
import 'result.dart';
import 'brain.dart';

class Bodybmi extends StatefulWidget {
  const Bodybmi({Key? key}) : super(key: key);

  @override
  State<Bodybmi> createState() => _Inputpage();
}

class _Inputpage extends State<Bodybmi> {
  //other way for guesture
  // Changecolor(gender genderr) {
  //   if (genderr == gender.malecolor) {
  //     if (malecolor == Kinactivecolor) {
  //       malecolor = Kactivecolor;
  //       femalecolor = Kinactivecolor;
  //     } else {
  //       malecolor = Kinactivecolor;
  //     }
  //   } else if (genderr ==gender.femalecolor) {
  //     if (femalecolor == Kinactivecolor) {
  //       femalecolor = Kactivecolor;
  //       malecolor = Kinactivecolor;
  //     } else {
  //       femalecolor = Kinactivecolor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                roundrectanglebox(
                  function: () {
                    setState(() {
                      malecolor = malecolor == Kinactivecolor
                          ? Kactivecolor
                          : Kinactivecolor;
                      femalecolor = Kinactivecolor;
                    });
                  },
                  colour: malecolor == Kactivecolor
                      ? Kactivecardcolor
                      : Kinactivecardcolor,
                  rectanglechild: iconcontent(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                      iconcontentcolours: malecolor),
                ),
                SizedBox(width: 20),
                roundrectanglebox(
                  function: () {
                    setState(() {
                      femalecolor = femalecolor == Kinactivecolor
                          ? Kactivecolor
                          : Kinactivecolor;
                      malecolor = Kinactivecolor;
                    });
                  },
                  colour: femalecolor == Kactivecolor
                      ? Kactivecardcolor
                      : Kinactivecardcolor,
                  rectanglechild: iconcontent(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                      iconcontentcolours: femalecolor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          roundrectanglebox(
            colour: KBoxcolor,
            rectanglechild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "HEIGHT",
                  style: textstyle(Colors.white60),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: nuberstyle(),
                    ),
                    Text(
                      "cm",
                      style: textstyle(Colors.white60),
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: Colors.white60,
                    activeTrackColor: Colors.white,
                    thumbColor: Color(0xffeb1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    overlayColor: Color(0x29eb1555),
                  ),
                  child: Slider(
                      value: height.toDouble(),
                      min: 100,
                      max: 320,
                      onChanged: (double value) {
                        setState(() {
                          height = value.toInt();
                        });
                      }),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                roundrectanglebox(
                  colour: KBoxcolor,
                  rectanglechild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "WEIGHT",
                            style: textstyle(Colors.white),
                          ),
                        ),
                      ),
                      Expanded(
                        child: textField(
                          textEditingController: textEditingControllerweight,
                          inputnum: weight,
                          onsubmit: (text) {
                            setState(() {
                              weight =
                                  int.parse(textEditingControllerweight.text);
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              roundbutton(
                                  mathfunction: () {
                                    setState(() {
                                      weight--;
                                      textEditingControllerweight.text =
                                          weight.toString();
                                    });
                                  },
                                  mathicon: FontAwesomeIcons.minus),
                              SizedBox(
                                width: 10,
                              ),
                              roundbutton(
                                  mathfunction: () {
                                    setState(() {
                                      weight++;
                                      textEditingControllerweight.text =
                                          weight.toString();
                                    });
                                  },
                                  mathicon: FontAwesomeIcons.plus),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                roundrectanglebox(
                    colour: KBoxcolor,
                    rectanglechild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "AGE",
                              style: textstyle(Colors.white),
                            ),
                          ),
                        ),
                        // Text(age.toString(),style: nuberstyle(),),
                        Expanded(
                          child: textField(
                            textEditingController: textEditingControllerage,
                            inputnum: age,
                            onsubmit: (text) {
                              setState(() {
                                age = int.parse(textEditingControllerage.text);
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                roundbutton(
                                    mathfunction: () {
                                      setState(() {
                                        age--;
                                        textEditingControllerage.text =
                                            age.toString();
                                      });
                                    },
                                    mathicon: FontAwesomeIcons.minus),
                                SizedBox(
                                  width: 10,
                                ),
                                roundbutton(
                                    mathfunction: () {
                                      setState(() {
                                        age++;
                                        textEditingControllerage.text =
                                            age.toString();
                                      });
                                    },
                                    mathicon: FontAwesomeIcons.plus),

                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Calculatorbmi calc =
                  Calculatorbmi(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Result(
                    bmiresult: calc.calculatebmi(),
                    bmitext: calc.getvalue(),
                    bmicomment: calc.interpretatevalue(),
                  ),
                ),
              );
            },

            child: Container(decoration: BoxDecoration(color: Colors.pink,borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.only(top: 20,bottom: 20),

              alignment: Alignment.center,
              child: Text(
                "CALCULATE BMI",
                style: textstyle( Colors.white),
              ),
            ),

          )
        ],
      ),
    );
  }
}
