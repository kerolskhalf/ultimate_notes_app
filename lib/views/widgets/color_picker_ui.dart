import 'package:flutter/material.dart';

import 'colors_list.dart';

class ColorPickerUI extends StatelessWidget {
  const ColorPickerUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF2C2C2E), // Dark grey to match your UI
        border: Border.all(color: Colors.grey.shade700, width: 1),
        borderRadius: BorderRadius.circular(12), // Consistent with inner container
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pick color you want :',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(

              border: Border.all(width: 1, color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(8),
            ),

            width: double.infinity,
            child:ColorsList() ,
          ),
        ],
      ),
    );
  }
}



