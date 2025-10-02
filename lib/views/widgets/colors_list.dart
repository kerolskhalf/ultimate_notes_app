import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

import '../../constats.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive,required this.colorIndex});
final bool isActive ;
final Color colorIndex;
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: isActive
            ? Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey.shade300, width: 2),
            ),
            child:  Padding(
              padding: const EdgeInsets.all(3),
              child: CircleAvatar(
                    backgroundColor: colorIndex,
                    radius: 25,
                  ),
            ))


            : CircleAvatar(backgroundColor:colorIndex, radius: 25,)
      );
  }
}




class ColorsList extends StatefulWidget {
  const ColorsList({super.key});

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList> {
  int colorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:50 ,
      child: ListView.builder(
        itemBuilder: (context, index) {
        return GestureDetector(
           onTap: (){
             colorIndex = index;
             BlocProvider.of<AddNoteCubit>(context).colorC = kNotesColors[index] ;
             setState(() {});
           },
          child: ColorItem(

            colorIndex:kNotesColors[index] ,
            isActive: colorIndex == index,
          ),
        );

      },itemCount: kNotesColors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

