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
          SizedBox(
            height: 40,
          ),
          Text(
            "Welcome to DigiSafe, ",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontFamily: 'Schyler',
                fontStyle: FontStyle.italic,
                fontSize: 25.0),
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
                    fontWeight: FontWeight.w200,
                    fontFamily: 'Schyler',
                    fontStyle: FontStyle.italic,
                    fontSize: 12.0),
              ),
              Expanded(
                  flex: 1,
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: TextButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(_createRoute());
                        },
                        label: Text("Next",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Schyler',
                              fontWeight: FontWeight.w300,
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

//Animation transition to next page
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Dashboard(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
