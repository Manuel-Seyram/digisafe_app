import 'package:digisafe_app/Main%20menu/Mainmenu.dart';
import 'package:flutter/material.dart';
import 'package:digisafe_app/Home Page/constants/app_textstyle.dart';
import 'package:digisafe_app/Home Page/constants/color_constants.dart';
import 'package:digisafe_app/Home Page/data/card_data.dart';
import 'package:digisafe_app/Home Page/widgets/my_card.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: null,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          elevation: 0.0,
          title: Text(
            "Your Cards",
            style: TextStyle(
              fontFamily: "Poppins",
              color: Colors.white60,
              fontSize: 25,
            ),
          ),
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: myCards.length,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 20,
                      );
                    },
                    itemBuilder: (context, index) {
                      return MyCard(
                        card: myCards[index],
                      );
                    }),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Dashboard()));
          },
          child: Icon(Icons.add),
        ));
  }
}
