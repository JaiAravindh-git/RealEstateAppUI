import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.blue),
        ],
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child: SafeArea(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                          child: Container(
                            height: 300.0,
                            width: 300.0,
                            child: Image.network(
                                'https://media.istockphoto.com/photos/modern-apartments-picture-id931243836?k=6&m=931243836&s=612x612&w=0&h=DOa4PvIN9if-FyBTkD-KIbsXUW1GwgSxB1ZItNmsCNA='),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 300, 0, 0),
                          child: Row(
                            children: [
                              Icon(Icons.ac_unit_outlined),
                              Text(
                                "Shriram properties",
                                style: TextStyle(fontSize: 30.0),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "Shriram Park 63",
                                style: TextStyle(fontSize: 20.0),
                              ),
                              Text("Perungulathur, Chennai"),
                              Text(
                                "29.30L- 79.79L",
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text("• Well Planned integrated townShip"),
                              Text("• 20 mins drive to airport"),
                              Text(
                                  "• Right opposite to Perungulathur railway station"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(80, 20, 20, 0),
                          child: Row(
                            children: [
                              FlatButton(
                                color: Colors.grey[200],
                                child: Text("I have interested Clients"),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              FlatButton(
                                color: Colors.grey[200],
                                child: Row(
                                  children: [
                                    Icon(Icons.ios_share),
                                    Text("Share"),
                                  ],
                                ),
                                onPressed: () {},
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                    Container(
                      child: Column(
                        children: [
                          Icon(Icons.access_alarm),
                          Icon(Icons.access_alarm),
                          Icon(Icons.access_alarm),
                          Icon(Icons.access_alarm),
                          Icon(Icons.access_alarm),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
