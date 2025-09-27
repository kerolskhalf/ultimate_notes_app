  import 'package:flutter/material.dart';
  import 'custom_icon.dart';

  class CustomAppBar extends StatelessWidget {
    const CustomAppBar({super.key,required this.passedIcon,required this.pageName, this.onPressed});
  final IconData passedIcon ;
  final String pageName;
    final void Function()? onPressed;
    @override
    Widget build(BuildContext context) {
      return  Row(
        children: [
          Text(pageName,style: TextStyle(fontSize: 30, letterSpacing: 2.0),) ,
          Spacer(),
          CustomIcon(icon: passedIcon,onPressed: onPressed,),
        ],
      );
    }
  }

