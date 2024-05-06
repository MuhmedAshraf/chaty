import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({required this.text}) ;

   String text ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        width: double.infinity,
        child:  Center(
          child: Text(text),
        ),
      ),
    );
  }
}
