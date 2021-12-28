import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.lable,
    required this.controller,
    this.isObscure=false,
  }) : super(key: key);
     
     final String lable;
     final bool isObscure;
     final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
     
      child: TextField(

        obscureText: isObscure,
        controller: controller,
        decoration: InputDecoration(
      
            labelText:lable ,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.blue),
          )
          
        ),
      ),
    );

    
  }
}