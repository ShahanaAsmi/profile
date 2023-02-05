import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
   CustomWidget({Key? key,required this.num,required this.text}) : super(key: key);
  String num;
  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15,top: 20),
      child: Column(
        children: [
          Text(num,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          Text(text,style: TextStyle(color: Colors.grey,),),
          
        ],
      ),
    );
  }
}
