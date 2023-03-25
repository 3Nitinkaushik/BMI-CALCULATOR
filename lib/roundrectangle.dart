import 'package:flutter/material.dart';

class roundrectanglebox extends StatelessWidget {
  const roundrectanglebox({required this.colour, required this.rectanglechild, this.function,Key?key}): super(key: key);
  final Widget rectanglechild;
  final Color colour;
  final void Function()? function;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: function,
        child: Container(
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(23),
          ),
          child: rectanglechild,
        ),
      ),
    );
  }
}