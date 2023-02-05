import 'package:flutter/material.dart';
import 'package:profilepage/local_widget/custom_button.dart';
import 'package:profilepage/provider.dart/fav_provider.dart';
import 'package:provider/provider.dart';

class Publcations extends StatefulWidget {
  Publcations({Key? key}) : super(key: key);

  @override
  State<Publcations> createState() => _PublcationsState();
}

class _PublcationsState extends State<Publcations> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoutiteProvider>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomButton(
                text: 'Latest',
              ),
              CustomButton(
                text: 'Spend',
              ),
              CustomButton(
                text: 'Track',
              ),
              CustomButton(
                text: 'Marketplace',
              ),
            ],
          ),
          SizedBox(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'What is new with you?',
                  labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://deadline.com/wp-content/uploads/2018/07/josephine-langford-photo.jpg'),
            ),
            title: Text('Lana Marandina'),
            subtitle: Text('yesterday 2:19 pm . budget\$213k'),
            trailing: Icon(Icons.line_weight_sharp),
          ),
          Text(
            'Hi everybody! i want to buy a new car and can\'t find it.Help me please',
            style: TextStyle(fontSize: 17),
          ),
          Container(
            width: 350,
            // height: 200,
            //height: 130,
            //width: 130,
            decoration: BoxDecoration(
                //border: Border.all(width: 4, color: Colors.white),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Image.network(
                  'https://www.mercedes-benz.com/en/vehicles/passenger-cars/concept-cars/_jcr_content/image/MQ6-12-image-20200908114040/00-mercedes-benz-eq-concept-cars-2560x1440.jpeg',
                  fit: BoxFit.fill,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // setState(() {

                        // });
                      },
                      // child: Icon(
                      //   Icons.favorite_border,
                      // ),
                      child: IconButton(
                        onPressed: () {
                          provider.toggleFavorite(toString());
                        },
                        icon: provider.isExist(toString())
                        ? const Icon(Icons.favorite,color: Colors.red,)
                        : const Icon(Icons.favorite_border)
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
