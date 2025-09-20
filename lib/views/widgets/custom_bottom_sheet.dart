import 'package:flutter/material.dart';
import 'custom_dotted_text_field.dart';

class CustomAddSheet extends StatelessWidget {
  const CustomAddSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(left: 20,right: 20),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30,bottom: 30 ),
            child: CustomTextField(hintText: 'title',),
          ),
          const CustomTextField(hintText: 'sub title',maxLines: 6,),
          Spacer(),
          Container(
             width: 300,
             height: 45,
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),color: Color(0xff518242)),
            child: Center(child: Text('save',style: TextStyle(color: Colors.white,fontSize: 20,),)),
           ),
         const SizedBox(
            height: 30,
          ) ,
        ],
      ),
    );
  }
}


