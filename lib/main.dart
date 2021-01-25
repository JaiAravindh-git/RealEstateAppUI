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
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child: Container(
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.ac_unit_outlined),
                          Text("Shriram properties"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text("Shriram Park 63"),
                          Text("Perungulathur, Chennai"),
                          Text("29.30L- 79.79L"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text("Well Planned integrated townShip"),
                          Text("20 mins drive to airport"),
                          Text(
                              "Right opposite to Perungulathur railway station"),
                        ],
                      ),
                      Row(
                        children: [
                          FlatButton(
                            child: Text("I have interested Clients"),
                            onPressed: () {},
                          ),
                          FlatButton(
                            child: Row(
                              children: [
                                Icon(Icons.share_outlined),
                                Text("Share"),
                              ],
                            ),
                            onPressed: () {},
                          )
                        ],
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
        ],
      ),
    );
  }
}
