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
      backgroundColor: Colors.grey[100],
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
                          padding: const EdgeInsets.fromLTRB(30, 0, 100, 0),
                          child: Container(
                            height: 300.0,
                            width: 300.0,
                            child: Image.network(
                                'https://media.istockphoto.com/photos/modern-apartments-picture-id931243836?k=6&m=931243836&s=612x612&w=0&h=DOa4PvIN9if-FyBTkD-KIbsXUW1GwgSxB1ZItNmsCNA='),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 100, 0, 0),
                          child: Row(
                            children: [
                              Icon(Icons.ac_unit_outlined),
                              Text(
                                "Shriram properties",
                                style: TextStyle(
                                    fontSize: 40.0, fontFamily: 'Roboto'),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(70, 5, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "Shriram Park 63",
                                style: TextStyle(
                                    fontSize: 30.0, fontFamily: 'Roboto'),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Perungulathur, Chennai",
                                style: TextStyle(
                                    fontFamily: 'Roboto', fontSize: 15.0),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "29.30L- 79.79L",
                                style: TextStyle(
                                    fontSize: 30.0, fontFamily: 'Roboto'),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(90, 5, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "• Well Planned integrated townShip",
                                style: TextStyle(
                                    fontFamily: 'Roboto', fontSize: 15.0),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "• 20 mins drive to airport",
                                style: TextStyle(
                                    fontFamily: 'Roboto', fontSize: 15.0),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "• Right opposite to Perungulathur railway station",
                                style: TextStyle(
                                    fontFamily: 'Roboto', fontSize: 15.0),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(60, 40, 20, 0),
                          child: Row(
                            children: [
                              Container(
                                height: 40.0,
                                width: 200.0,
                                child: FlatButton(
                                  textColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)),
                                  color: Colors.pink[200],
                                  child: Text(
                                    "I have interested Clients",
                                    style: TextStyle(
                                        fontFamily: 'Roboto', fontSize: 17.0),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                height: 40.0,
                                width: 96.0,
                                child: FlatButton(
                                  textColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)),
                                  color: Colors.pink[200],
                                  child: Row(
                                    children: [
                                      Icon(Icons.ios_share),
                                      Text(
                                        "Share",
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 17.0),
                                      ),
                                    ],
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 40, 0, 0),
                          child: Container(
                            height: 40.0,
                            width: 300.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.blue.withOpacity(0.3),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.badge),
                                    Container(
                                      child: Text("Exclusive"),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  child: Text(" | "),
                                  width: 20.0,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.location_city),
                                    Container(
                                      child: Text("Chennai"),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  child: Text(" | "),
                                  width: 20.0,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.filter_sharp),
                                    Container(
                                      child: Text("Filters"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 50, 30, 0),
                        child: Column(
                          children: [
                            Icon(Icons.location_city_outlined),
                            SizedBox(
                              height: 10.0,
                            ),
                            Icon(Icons.photo_sharp),
                            SizedBox(
                              height: 10.0,
                            ),
                            Icon(Icons.video_call),
                            SizedBox(
                              height: 10.0,
                            ),
                            Icon(Icons.maps_ugc_outlined),
                            SizedBox(
                              height: 10.0,
                            ),
                            Icon(Icons.money_outlined),
                          ],
                        ),
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
