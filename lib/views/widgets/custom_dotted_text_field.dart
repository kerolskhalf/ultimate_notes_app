import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
class CustomTextField extends StatefulWidget {
 const  CustomTextField({super.key,required this.hintText,this.maxLines=1,this.onSaved});
final String hintText;
final int maxLines;
final void Function(String?)? onSaved;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
 Color colorChanging = Colors.white54;

  @override
  Widget build(BuildContext context) {
    return  DottedBorder(

      color: colorChanging,
      strokeWidth: 3,
      dashPattern: [6, 4],
      borderType: BorderType.RRect,
      radius: Radius.circular(8),
      child: Container(
        padding: EdgeInsets.all(10),
        child: TextFormField(
          validator: (value){

            if(value?.isEmpty ?? true) {
              setState(() {
                
              });
              colorChanging = Colors.red;
              return 'field is required';
            }
            return null;
          },
          onSaved: widget.onSaved,
          maxLines:widget.maxLines ,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(color: Colors.white60),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }}