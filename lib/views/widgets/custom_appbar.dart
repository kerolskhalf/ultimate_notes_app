  import 'package:flutter/material.dart';
  import 'custom_icon.dart';

  class CustomAppBar extends StatelessWidget {
    const CustomAppBar({super.key,required this.passedIcon,required this.pageName});
  final IconData passedIcon ;
  final String pageName;
    @override
    Widget build(BuildContext context) {
      return  Row(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(pageName,style: TextStyle(fontSize: 30, letterSpacing: 2.0),) ,
          Spacer(),
          CustomIcon(icon: passedIcon),
        ],
      );
    }
  }

