import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Select an Option To Get started",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontFamily: 'Schyler',
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.all(60.0),
              child: Center(
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20.0,
                  children: <Widget>[
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Colors.grey[100],
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/creditcards.png",
                                width: 64.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Credit Cards",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                            ],
                          ),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Colors.grey[100],
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/passport.png",
                                width: 55.0,
                                height: 55.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Passports",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                            ],
                          ),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Colors.grey[100],
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/nationaliD.png",
                                width: 64.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "National IDs",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                            ],
                          ),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Colors.grey[100],
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/driverslicense.png",
                                width: 70.0,
                                height: 70.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Driver's License",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                            ],
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )));
  }
}
