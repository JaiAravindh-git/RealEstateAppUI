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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final tabs = [
    Center(
      child: Text("Home"),
    ),
    ListingPages(),
    Center(
      child: Text("projects"),
    ),
    Center(
      child: Text("Realtors"),
    ),
    Center(
      child: Text("Listings"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      bottomNavigationBar: btBar(),
      body: tabs[_currentIndex],
    );
  }

  BottomNavigationBar btBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      items: [
        bottomBar(
          "Home",
          Colors.grey,
          Icon(Icons.home_outlined),
        ),
        bottomBar(
          "Projects",
          Colors.grey,
          Icon(Icons.apartment),
        ),
        bottomBar(
          "Listings",
          Colors.grey,
          Icon(Icons.list_alt_outlined),
        ),
        bottomBar(
          "Realtors",
          Colors.grey,
          Icon(Icons.people_alt_sharp),
        ),
        bottomBar(
          "Listings",
          Colors.grey,
          Icon(Icons.line_style),
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }

  BottomNavigationBarItem bottomBar(label, colour, icons) {
    return BottomNavigationBarItem(
        icon: icons, title: Text(label), backgroundColor: colour);
  }
}

class ListingPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
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
    );
  }
}
