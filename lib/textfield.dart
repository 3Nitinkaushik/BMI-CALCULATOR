import 'package:flutter/material.dart';
import'themestyle.dart';

TextField textField({required TextEditingController textEditingController,required int inputnum,required void Function(String) onsubmit}) {
  return TextField(

    keyboardType: TextInputType.number,
    textAlign: TextAlign.center,
    style: nuberstyle(),
    controller: textEditingController,

    decoration:
    InputDecoration(hintText: inputnum.toString(),hintStyle: nuberstyle(),border: InputBorder.none),
    onSubmitted: onsubmit,
  );
}
