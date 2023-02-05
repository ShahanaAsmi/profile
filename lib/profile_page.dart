import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:profilepage/screens/addresses.dart';
import 'package:profilepage/local_widget/custom_widget.dart';
import 'package:profilepage/local_widget/latest.dart';
import 'package:profilepage/screens/publications.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  List<String> item = [
    'Publications',
    'Addresses',
  ];
  List<Widget> data = [
    Publcations(),
    Address(),
  ];
 
  

  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('HomePages'),
      // ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Container(
            margin: EdgeInsets.all(5),
            // height: double.infinity,
            // width: double.infinity,
            child: Column(
              children: [
                CoverImage(),
                Container(
                  transform: Matrix4.translationValues(0.0, -40.0, 0.0),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Lana Marandina',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'online',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(width: 7),
                                  CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 5,
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            height: 130,
                            //width: 130,
                            decoration: BoxDecoration(
                                border: Border.all(width: 4, color: Colors.white),
                                borderRadius: BorderRadius.circular(15)),
                            child: Image.network(
                              'https://deadline.com/wp-content/uploads/2018/07/josephine-langford-photo.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomWidget(num: '\$270.6k', text: 'Spending'),
                          CustomWidget(num: '1.7M', text: 'Transaction'),
                          CustomWidget(num: '18.6k', text: 'Followers'),
                          CustomWidget(num: '18.6k', text: 'Following'),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: item.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Visibility(
                                    visible: false,
                                    child: Container(
                                      width: 5,
                                      height: 5,
                                      // decoration: BoxDecoration(
                                      //     shape: BoxShape.circle,
                                      //     color: Colors.deepPurpleAccent),
                                    )),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      current = index;
                                    });
                                  },
                                  child: SingleChildScrollView(
                                    child: Container(
                                      margin: EdgeInsets.all(1),
                                      width: 100,
                                      height: 45,
                                      decoration: BoxDecoration(
                                          border: current == index
                                              ? Border(
                                                  bottom: BorderSide(
                                                      color: current == index
                                                          ? Colors.grey
                                                          : Colors.grey))
                                              : null),
                                      child: Center(
                                          child: Text(
                                        item[index],
                                        style: GoogleFonts.laila(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                            color: current == index
                                                ? Colors.black
                                                : Colors.grey),
                                      )),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      Container(
                      //  width: double.infinity,
                       // height: 240,
                        child: Column(
                          children: [(data[current])],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

Widget CoverImage() {
  return Container(
    height: 150,
    decoration: BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://media.cntraveler.com/photos/5d8cf7d5db6acf000833e6cc/master/pass/Eiffel-Tower_GettyImages-1060266626.jpg'))),
  );
}
// Widget profile() {
//   return 
// }