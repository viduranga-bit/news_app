
import 'package:flutter/material.dart';
class CustomElevatedButton extends StatelessWidget {
  
  
  const CustomElevatedButton({ Key? key ,
     required this.text,
     required this.onTap,
  
  }) : super(key: key);
 
     final String text;
     final Function() onTap; 

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
       onPressed: onTap,
       child: Text(
          text,
          style:const TextStyle(fontSize: 24.0,fontWeight: FontWeight.w800),
          ),
          style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15.0),  
       ),
    );
  }
}