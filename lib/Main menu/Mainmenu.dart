import 'dart:ui';
import 'package:digisafe_app/Main%20menu/Add/creditcard.dart';
import 'package:digisafe_app/Main%20menu/Add/othercards.dart';
import 'package:digisafe_app/Main%20menu/Main%20menu%20options/Drivers%20License/splash.dart';
import 'package:digisafe_app/Main%20menu/Main%20menu%20options/Health%20Insurance/splash.dart';
import 'package:digisafe_app/Main%20menu/Main%20menu%20options/National%20Id/splash.dart';
import 'package:digisafe_app/Main%20menu/Main%20menu%20options/Passport/splash.dart';
import 'package:digisafe_app/Main%20menu/Main%20menu%20options/Voters%20Id/splash.dart';
import 'package:digisafe_app/Main%20menu/Main%20menu%20options/Work%20Id/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Select option to Start, ",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Schyler',
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Select any option to get started on\n"
                      "your new card",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontFamily: 'Schyler',
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Splashid1()));
                              },
                              child: Container(
                                height: 180,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.lightBlueAccent
                                        .withOpacity(1.0)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/healthid.png",
                                      height: 70.0,
                                      width: 70.0,
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      "Health Insurance",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Schyler',
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Splashid2()));
                              },
                              child: Container(
                                height: 180,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color:
                                        Colors.green.shade400.withOpacity(1.0)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/driverslicense.png",
                                      height: 80.0,
                                      width: 80.0,
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      "Drivers License",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Schyler',
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Splashid3()));
                              },
                              child: Container(
                                height: 180,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.redAccent.withOpacity(1.0)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/nationaliD.png",
                                      height: 80.0,
                                      width: 80.0,
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      "National ID",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Schyler',
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Splashid4()));
                              },
                              child: Container(
                                height: 180,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.pinkAccent.withOpacity(1.0)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/passport.png"),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      "Passport",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Schyler',
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Splashid5()));
                              },
                              child: Container(
                                height: 180,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color:
                                        Colors.indigoAccent.withOpacity(1.0)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/voters.png",
                                      height: 70.0,
                                      width: 70.0,
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      "Voter ID",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Schyler',
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Splashid6()));
                              },
                              child: Container(
                                height: 180,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color:
                                        Colors.orangeAccent.withOpacity(1.0)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/workid.png",
                                      height: 70.0,
                                      width: 70.0,
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      "Work ID",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Schyler',
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.add,
        overlayOpacity: 0.1,
        children: [
          SpeedDialChild(
              child: Icon(
                Icons.credit_card,
              ),
              label: 'Credit Card',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Creditcard()));
              }),
          SpeedDialChild(
              child: Icon(Icons.add_box),
              label: 'Other Cards',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Othercards()));
              }),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
