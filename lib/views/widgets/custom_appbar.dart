import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('My Notes',style: TextStyle(fontSize: 30, letterSpacing: 2.0),) ,
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}

