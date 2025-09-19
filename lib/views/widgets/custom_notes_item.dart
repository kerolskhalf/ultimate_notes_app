import 'package:flutter/material.dart';

class CustomNotesItem extends StatelessWidget {
  const CustomNotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30,bottom: 30,left: 10),
      decoration: BoxDecoration(
        color:  const Color(0xffffcc80),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: const Text('New note',style: TextStyle(color: Colors.black,fontSize: 25),),
            ),
            subtitle: const Text('its a wonderful day to finish the last project',style: TextStyle(color: Colors.black54,fontSize: 20)),
            trailing:IconButton(onPressed: (){}, icon:const Icon( Icons.delete,color: Colors.black,size: 35,)),

          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: const Text('may1, 2030'
              ,style: TextStyle(color: Colors.black),),
          ),
        ],
      ),
    );
  }
}
