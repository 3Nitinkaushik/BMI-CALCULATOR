import 'package:flutter/material.dart';
SizedBox roundbutton({required void Function() mathfunction,required IconData mathicon}) {
  return SizedBox(
    width: 50,
    height: 50,
    child: RawMaterialButton(
      onPressed:  mathfunction,
      fillColor: Color(0x80484c66),
      shape: CircleBorder(
        side: BorderSide(
          width: 3,
          color: Color(0x30484c66),

        ),
        eccentricity: 0.5,
      ),
      child:Align(alignment: Alignment.center,
          child: Icon(mathicon,size: 30,)),

    ),
  );
}