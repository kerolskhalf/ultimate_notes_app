import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
    this.onTap,
    this.isLoading = false,
  });
  final VoidCallback? onTap;
  final bool isLoading ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 300,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Color(0xff518242),
        ),
        child: Center(
          child: isLoading
              ? SizedBox(width: 25,height: 25,child: CircularProgressIndicator())
              : Text(
            'Add',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
