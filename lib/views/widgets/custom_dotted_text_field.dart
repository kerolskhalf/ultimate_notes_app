import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hintText,this.maxLines=1});
final String hintText;
final int maxLines;
  @override
  Widget build(BuildContext context) {
    return  DottedBorder(
      color: Color(0xff205014),
      strokeWidth: 3,
      dashPattern: [6, 4],
      borderType: BorderType.RRect,
      radius: Radius.circular(8),
      child: Container(
        padding: EdgeInsets.all(10),
        child: TextField(
          maxLines:maxLines ,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.white60),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }}