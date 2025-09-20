import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  DottedBorder(
      color: Colors.grey,
      strokeWidth: 3,
      dashPattern: [6, 4],
      borderType: BorderType.RRect,
      radius: Radius.circular(8),
      child: Container(
        padding: EdgeInsets.all(10),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Title',
            hintStyle: TextStyle(color: Colors.white60),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }}