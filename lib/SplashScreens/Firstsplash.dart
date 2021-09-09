import 'package:digisafe_app/Authentication%20screens/welcome.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: (4)),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Lottie.asset(
            'assets/digisafe.json',
            controller: _controller,
            //height: MediaQuery.of(context).size.height * 1,
            animate: true,
            onLoaded: (composition) {
              _controller
                ..duration = composition.duration
                ..forward().whenComplete(() => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    ));
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "DigiSafe",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontFamily: 'Schyler',
                fontStyle: FontStyle.italic,
                fontSize: 24.0),
          )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
