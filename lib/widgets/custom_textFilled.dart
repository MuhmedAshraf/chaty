import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
   CustomTextFiled({super.key, this.hintText}) ;
String? hintText ;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(

        hintText: hintText ,
          hintStyle: TextStyle(
            color: Colors.white
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)
          ),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
        )
      ),
      style: TextStyle(color: Colors.white),
    );
  }
}
