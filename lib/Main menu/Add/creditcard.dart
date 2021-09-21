import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:lottie/lottie.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:image_picker/image_picker.dart';

class Creditcard extends StatefulWidget {
  const Creditcard({Key? key}) : super(key: key);

  @override
  _CreditcardState createState() => _CreditcardState();
}

class _CreditcardState extends State<Creditcard> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: (3)),
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
            height: 70.0,
          ),
          Text(
            "Please Select to scan Credit card.",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w200,
                fontFamily: 'Schyler',
                fontStyle: FontStyle.italic,
                fontSize: 20.0),
          ),
          SizedBox(
            height: 30.0,
          ),
          Expanded(
            flex: 4,
            child: Lottie.asset(
              'assets/credit card.json',
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
              ElevatedButton(
                  onPressed: () {
                    showOptionsDialog(context);
                  },
                  child: Icon(Icons.add_a_photo)),
            ],
          ))
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}

final imgPicker = ImagePicker();

Future<void> showOptionsDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Choose Option",
            style: TextStyle(
              fontWeight: FontWeight.w200,
              fontFamily: 'Schyler',
              fontSize: 20.0,
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                GestureDetector(
                  child: Text(
                    "Capture card From Camera",
                    style: TextStyle(
                      fontFamily: 'Schyler',
                      fontSize: 12.0,
                    ),
                  ),
                  onTap: () {
                    openCamera();
                  },
                ),
                Padding(padding: EdgeInsets.all(10)),
                GestureDetector(
                  child: Text(
                    "Take card From Gallery",
                    style: TextStyle(
                      fontFamily: 'Schyler',
                      fontSize: 12.0,
                    ),
                  ),
                  onTap: () {
                    openGallery();
                  },
                ),
              ],
            ),
          ),
        );
      });
}

void openCamera() async {
  // ignore: unused_local_variable
  var imgCamera = await imgPicker.getImage(source: ImageSource.camera);
}

void openGallery() async {
  // ignore: unused_local_variable
  var imgGallery = await imgPicker.getImage(source: ImageSource.gallery);
}
