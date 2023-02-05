import 'package:flutter/material.dart';
import 'package:profilepage/local_widget/custom_card.dart';

class Address extends StatefulWidget {
  Address({
    Key? key,
  }) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  List<String> data = ['one', 'two', 'three'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Title',
            style: TextStyle(color: Color.fromARGB(255, 102, 102, 102)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '9 surprising things about how we make our design projects',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Image.network(
            'https://www.mercedes-benz.com/en/vehicles/passenger-cars/concept-cars/_jcr_content/image/MQ6-12-image-20200908114040/00-mercedes-benz-eq-concept-cars-2560x1440.jpeg',
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Interviewer',
            style: TextStyle(color: Color.fromARGB(255, 102, 102, 102)),
          ),

          Row(
            children: [
              Chip(
                label: Text(data[0].toString()),
                onDeleted: () {
                  setState(() {
                    data.clear();
                  });
                },
              ),
              Chip(
                label: Text(data[1].toString()),
                onDeleted: () {
                  setState(() {
                    data.clear();
                  });
                },
              ),
               Chip(
                label: Text(data[2].toString()),
                onDeleted: () {
                  setState(() {
                    data.clear();
                  });
                },
              ),
            ],
          )

          //  Expanded(
          //    child: Container(
          //      child: ListView.builder(
          //       itemCount: data.length,
          //       itemBuilder: (context, index) {
          //        return Card(
          //         color: Colors.red,
          //         child: ListTile(
          //           title: Text(data[index]),
          //         ),
          //        );
          //      },),
          //    ),
          //  )
        ],
      ),
    );
  }
}
