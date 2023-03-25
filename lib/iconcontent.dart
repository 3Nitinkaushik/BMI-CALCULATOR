import 'package:flutter/material.dart';
import 'themestyle.dart';
Column iconcontent({required IconData icon, required String label,required Color iconcontentcolours}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        icon,
        color: iconcontentcolours ,
        size: 80,
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        label,
        style: textstyle(iconcontentcolours),
      ),
    ],
  );
}