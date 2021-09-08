import 'package:digisafe_app/Main%20menu/Mainmenu.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:lottie/lottie.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: (9)),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        children: <Widget>[
          Text(
            "Welcome to DigiSafe ",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontFamily: 'Lato',
                fontStyle: FontStyle.italic,
                fontSize: 20.0),
          ),
          SizedBox(
            height: 30.0,
          ),
          Expanded(
            flex: 4,
            child: Lottie.asset(
              'assets/lf30_editor_znzfprgp.json',
              controller: _controller,
              // height: MediaQuery.of(context).size.height * 1,
              animate: true,
              onLoaded: (composition) {
                _controller
                  ..duration = composition.duration
                  ..forward();
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Expanded(
              child: Column(
            children: <Widget>[
              Text(
                "Your secure digital identification holder",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 12.0),
              ),
              Expanded(
                  flex: 1,
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dashboard()));
                        },
                        label: Text("Next",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.lightBlueAccent,
                            )),
                        icon: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 20.0,
                          color: Colors.lightBlueAccent,
                        ),
                      )))
            ],
          ))
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
