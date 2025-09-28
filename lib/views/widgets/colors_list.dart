import 'package:flutter/material.dart';

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
   List<Color> kNotesColors = const [
    Color(0xFFFFD700),
    Color(0xFFFF6B6B),
    Color(0xFF4ECDC4),
    Color(0xFF45B7D1),
    Color(0xFF96CEB4),
    Color(0xFFFECE85),
    Color(0xFFD63384),
    Color(0xFF6F42C1),
    Color(0xFFF39C12),
    Color(0xFF20C997),
    Color(0xFFE74C3C),
    Color(0xFF3498DB),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:50 ,
      child: ListView.builder(
        itemBuilder: (context, index) {
        return GestureDetector(
           onTap: (){
             colorIndex = index;
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