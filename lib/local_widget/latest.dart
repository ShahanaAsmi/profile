import 'package:flutter/material.dart';

class Latest extends StatelessWidget {
   Latest({Key? key,required this.text}) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16) ,);
  }
}
