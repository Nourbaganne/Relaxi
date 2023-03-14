import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:relaxy_pfa_project/constants.dart';



class RoundedButton extends StatefulWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final double borderWidth;

  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
    this.borderWidth = 0
  }) : super(key: key);

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.75,
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            backgroundColor: isFocused? Color(0xFFEDF1D6): widget.color,
            side: BorderSide(
              width: widget.borderWidth,
              color: kPrimaryColor,
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
          ),
          onPressed: widget.press,
          child: Text(
            widget.text,
            style: TextStyle(color: widget.textColor),
          ),
        ),
    );
  }
}