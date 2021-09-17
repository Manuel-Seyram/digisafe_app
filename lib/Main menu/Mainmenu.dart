import 'dart:ui';
import 'package:digisafe_app/Main%20menu/Main%20menu%20options/Drivers%20License/splash.dart';
import 'package:digisafe_app/Main%20menu/Main%20menu%20options/Health%20Insurance/splash.dart';
import 'package:digisafe_app/Main%20menu/Main%20menu%20options/National%20Id/splash.dart';
import 'package:digisafe_app/Main%20menu/Main%20menu%20options/Passport/splash.dart';
import 'package:digisafe_app/Main%20menu/Voters%20Id/splash.dart';
import 'package:digisafe_app/Main%20menu/Work%20Id/splash.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
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
                        color: Colors.white60),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Select any option to get started on\n"
                    "your new card",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
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
                              height: 200,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Color(0xff8E8FC9).withOpacity(0.0)),
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
                                        color: Color(0xff289FF3)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 32,
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
                              height: 200,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Color(0xff8E8FC9).withOpacity(0.0)),
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
                                        color: Color(0xff7B52FE)),
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
                              height: 200,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Color(0xff8E8FC9).withOpacity(0.0)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/nationaliD.png",
                                    height: 60.0,
                                    width: 60.0,
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
                                        color: Color(0xffFF44DE)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 32,
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
                              height: 200,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Color(0xff8E8FC9).withOpacity(0.0)),
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
                                        color: Color(0xffFF8D45)),
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
                              height: 200,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Color(0xff8E8FC9).withOpacity(0.0)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/voters.png",
                                    height: 50.0,
                                    width: 50.0,
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
                                        color: Color(0xffFF4D4D)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 32,
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
                              height: 200,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Color(0xff8E8FC9).withOpacity(0.0)),
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
                                        color: Color(0xff1DCA4D)),
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
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
