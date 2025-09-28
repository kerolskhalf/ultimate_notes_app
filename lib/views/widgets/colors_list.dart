import 'package:flutter/material.dart';

class ColorPicker extends StatelessWidget {
  const ColorPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 4),
        child: const CircleAvatar(
          backgroundColor:Colors.red ,
          radius: 25,),
      );
  }
}




class ColorsList extends StatelessWidget {
  const ColorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:50 ,
      child: ListView.builder(itemBuilder: (context, index) {
        return ColorPicker();

      },itemCount: 7,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}