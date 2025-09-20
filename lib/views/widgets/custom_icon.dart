import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key,required this.icon});
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Color(0xff053900),
          borderRadius: BorderRadius.circular(13)),
      child: Center(
        child: Icon(icon,size: 30,),
      ),
    );
  }
}