
import 'package:flutter/material.dart';
import 'package:notes_app/logic/model/note_model.dart';

import '../../constats.dart';
import 'colors_list.dart';

class EditColorsList extends StatefulWidget {
  const EditColorsList({super.key,required this.note});
 final  NoteModel note;
  @override
  State<EditColorsList> createState() => _EditColorsListState();
}

class _EditColorsListState extends State<EditColorsList> {
late int colorIndex;
  @override
  void initState() {
    colorIndex = kNotesColors.indexOf(Color(widget.note.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFF2C2C2E),
          border: Border.all(color: Colors.grey.shade700, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'change color you want :',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(

                border: Border.all(width: 1, color: Colors.grey.shade600),
                borderRadius: BorderRadius.circular(8),
              ),

              width: double.infinity,
              child:
              /// the code that should be refactored
              SizedBox(
                height:50 ,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){

                        setState(() {
                          colorIndex = index;
                          widget.note.color = kNotesColors[index].toARGB32();
                        });
                      },
                      child: ColorItem(

                        colorIndex:kNotesColors[index] ,
                        isActive: colorIndex == index,
                      ),
                    );

                  },itemCount: kNotesColors.length,
                  scrollDirection: Axis.horizontal,
                ),
              ) ,
            ),
          ],
        )
    );
  }
}