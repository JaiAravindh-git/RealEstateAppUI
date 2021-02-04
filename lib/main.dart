import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'listings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              title: Text('Home'),
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_rounded),
              title: Text('Listings'),
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.apartment),
              title: Text('Projects'),
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text('Realtors'),
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.dynamic_feed_rounded),
              title: Text('Listings'),
              backgroundColor: Colors.grey),
        ],
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Listings(
            img:
                'https://mediacdn.99acres.com/media1/13921/10/278430200M-1612328313721.jpg',
            property: 'Property1',
            propertyname: 'Property 1 park',
            location: 'Chennai',
            cost: '25.5L - 35.5L',
          ),
          Listings(
            img:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHZDXGsLPahHg7Ib5aISArJBURuTOuRdlvUQ&usqp=CAU',
            property: 'Property2',
            propertyname: 'Property 2 park',
            location: 'Coimbatore',
            cost: '25.5L - 35.5L',
          ),
          Listings(
            img:
                'https://219832-668593-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2017/06/Real-Estate-scaled.jpg',
            property: 'Property4',
            propertyname: 'Property 3 park',
            location: 'Salem',
            cost: '25.5L - 35.5L',
          ),
        ],
      ),
    );
  }
}
