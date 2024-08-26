// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:jeemo_pay/shared/colors.dart';
import 'package:jeemo_pay/shared/constant.dart';
import 'package:jeemo_pay/shared/sizeConfig.dart';
import 'package:jeemo_pay/shared/text_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton(
      {Key? key,
      required this.onTap,
      required this.label,
      this.textColor = Colors.white,
      this.borderColor,
      this.buttonColor,
      this.height,
      this.loading = false})
      : super(key: key);

  final String label;
  final double? height;
  final Color? buttonColor;
  final Color? textColor;
  final Color? borderColor;

  final VoidCallback onTap;
  final bool loading;

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: widget.height ?? 60,
        width: 250,
        decoration: BoxDecoration(
            color: widget.buttonColor ?? customColor,
            borderRadius: BUTTONBORDERRADIUS,
            border: Border.all(color: widget.borderColor ?? appPrimaryColor)),
        child: Center(
          child: Text(
            widget.label,
            textAlign: TextAlign.center,
            style: txStyle15.copyWith(
                color: widget.textColor, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
