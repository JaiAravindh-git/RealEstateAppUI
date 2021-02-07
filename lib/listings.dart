import 'package:flutter/material.dart';
import 'package:nice_button/nice_button.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Listings extends StatelessWidget {
  Listings(
      {this.img, this.propertyname, this.property, this.location, this.cost});
  String img;
  String property;
  String propertyname;
  String location;
  String cost;
  var firstColor = Color(0xff5b86e5), secondColor = Color(0xff36d1dc);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
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
                          child: Image.network(img),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 100, 0, 0),
                        child: Row(
                          children: [
                            Icon(Icons.ac_unit_outlined),
                            Text(
                              property,
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
                              propertyname,
                              style: TextStyle(
                                  fontSize: 30.0, fontFamily: 'Roboto'),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              location,
                              style: TextStyle(
                                  fontFamily: 'Roboto', fontSize: 15.0),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              cost,
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
                              height: 50.0,
                              width: 200.0,
                              child: NiceButton(
                                radius: 30.0,
                                text: 'Clients',
                                gradientColors: [secondColor, firstColor],
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              height: 50.0,
                              width: 96.0,
                              child: NiceButton(
                                elevation: 5,
                                radius: 30.0,
                                mini: true,
                                icon: Icons.share_sharp,
                                gradientColors: [secondColor, firstColor],
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 40, 0, 0),
                        child: Container(
                          height: 50.0,
                          width: 310.0,
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
                                    child: Text(
                                      "Exclusive",
                                      style: TextStyle(fontSize: 17.0),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                child: Text(
                                  " | ",
                                  style: TextStyle(fontSize: 17.0),
                                ),
                                width: 20.0,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_city),
                                  Container(
                                    child: Text(
                                      "Chennai",
                                      style: TextStyle(fontSize: 17.0),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                child: Text(
                                  " | ",
                                  style: TextStyle(fontSize: 17.0),
                                ),
                                width: 20.0,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.filter_sharp),
                                  Container(
                                    child: Text(
                                      "Filters",
                                      style: TextStyle(fontSize: 17.0),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    child: SpeedDial(
                      curve: Curves.easeIn,
                      animatedIcon: AnimatedIcons.menu_close,
                      children: [
                        SpeedDialChild(
                          child: Icon(Icons.home),
                          label: "Home",
                          onTap: () {},
                        ),
                        SpeedDialChild(
                          child: Icon(Icons.location_city),
                          label: "location",
                          onTap: () {},
                        ),
                        SpeedDialChild(
                          child: Icon(Icons.list_alt_outlined),
                          label: "Listing",
                          onTap: () {},
                        ),
                        SpeedDialChild(
                          child: Icon(Icons.map_sharp),
                          label: "Maps",
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
