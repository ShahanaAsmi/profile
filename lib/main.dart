import 'package:flutter/material.dart';
import 'package:profilepage/erased.dart';

import 'package:profilepage/profile_page.dart';
import 'package:profilepage/provider.dart/fav_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoutiteProvider(),
      child:  MaterialApp(
        home:HomeScreen(),
      ),
    );
  }
}
