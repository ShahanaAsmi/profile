import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({Key? key,required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 2, right: 5),
        child: TextButton(
          style: TextButton.styleFrom(
            textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            foregroundColor: Colors.black,
          ),
          child: Text(text),
          onPressed: () {},
        ));
  }
}
