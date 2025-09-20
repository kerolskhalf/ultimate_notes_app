import 'package:flutter/material.dart';
import 'custom_dotted_text_field.dart';

class CustomAddSheet extends StatelessWidget {
  const CustomAddSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20,right: 20),
      child: Column(
        children: [

          Padding(
            padding: EdgeInsets.only(top: 30,bottom: 20 ),
            child: CustomTextField(),
          )
        ],
      ),
    );
  }
}


