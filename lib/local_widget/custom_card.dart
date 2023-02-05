import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  CustomCard({Key? key,}) : super(key: key);
  

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 115,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1)),
      child: Row(
        children: [
          CircleAvatar(
            radius: 10,
            backgroundImage: NetworkImage(
              'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg',
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text('Ilya Fisuk'),
          SizedBox(
            width: 5,
          ),
          GestureDetector(onTap:() {
            
          }, child: Icon(Icons.cancel))
        ],
      ),
    );
  }
}
