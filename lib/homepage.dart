import 'package:digisafe_app/Main%20menu/Mainmenu.dart';
import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  BuildContext get context => (context);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildTitleSection(title: "Your Cards,"),
            _buildCard(
                color: Color(0xFF090943),
                surname: "",
                firstname: "",
                nationality: "",
                dob: "",
                idnumber: "",
                placeofinsurance: "",
                dateofinsurance: "",
                cardExpiration: ""),
            SizedBox(
              height: 15,
            ),
            _buildCard(
                color: Color(0xFF090943),
                surname: "",
                firstname: "",
                nationality: "",
                dob: "",
                idnumber: "",
                placeofinsurance: "",
                dateofinsurance: "",
                cardExpiration: ""),
            _buildAddCardButton(
              icon: Icon(Icons.add),
              color: Color(0xFF081603),
            )
          ],
        ),
      ),
    );
  }

  // Build the title section
  Column _buildTitleSection({@required title}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 8.0, top: 100.0),
          child: Text(
            '$title',
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w500,
                fontFamily: 'Schyler',
                color: Colors.white),
          ),
        ),
        SizedBox(
          height: 20.0,
        )
      ],
    );
  }

  // Build the cards widget
  Card _buildCard(
      {required Color color,
      required String surname,
      required String firstname,
      required String nationality,
      required String dob,
      required String idnumber,
      required String placeofinsurance,
      required String dateofinsurance,
      required String cardExpiration}) {
    return Card(
      elevation: 4.0,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        height: 250,
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildLogosBlock(),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                '$surname',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 6.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                '$firstname',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 6.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                '$nationality',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 6.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                '$dob',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 6.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                '$idnumber',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 6.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                '$placeofinsurance',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 6.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                '$dateofinsurance',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 6.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                '$cardExpiration',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 6.0,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buildDetailsBlock(
                  label: '',
                  value: surname,
                ),
                _buildDetailsBlock(
                  label: '',
                  value: firstname,
                ),
                _buildDetailsBlock(
                  label: '',
                  value: nationality,
                ),
                _buildDetailsBlock(
                  label: '',
                  value: dob,
                ),
                _buildDetailsBlock(
                  label: '',
                  value: idnumber,
                ),
                _buildDetailsBlock(
                  label: '',
                  value: placeofinsurance,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Build the top row containing logos and images
  Row _buildLogosBlock() {
    return Row();
  }

// Build Column containing the cardholder and expiration information
  Column _buildDetailsBlock({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$label',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 5,
          ),
        ),
        Text(
          '$value',
          style: TextStyle(
              color: Colors.white, fontSize: 9, fontWeight: FontWeight.w400),
        )
      ],
    );
  }

// Build the FloatingActionButton
  Container _buildAddCardButton({
    required Icon icon,
    required Color color,
  }) {
    return Container(
      margin: const EdgeInsets.only(top: 24.0),
      alignment: Alignment.center,
      child: FloatingActionButton(
        elevation: 2.0,
        onPressed: () => Dashboard(),
        backgroundColor: Colors.blue,
        mini: false,
        child: icon,
      ),
    );
  }
}
