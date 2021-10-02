import 'package:flutter/material.dart';
import 'package:digisafe_app/Home Page/constants/app_textstyle.dart';
import 'package:digisafe_app/Home Page/data/card_data.dart';

class MyCard extends StatelessWidget {
  final CardModel card;
  const MyCard({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(20),
          height: 250,
          width: 350,
          decoration: BoxDecoration(
            color: card.cardColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "SURNAME",
                        style: ApptextStyle.MY_CARD_TITLE,
                      ),
                      Text(
                        card.surname,
                        style: ApptextStyle.MY_CARD_SUBTITLE,
                      ),
                    ],
                  ),
                  Text(
                    "FIRSTNAMES",
                    style: ApptextStyle.MY_CARD_TITLE,
                  ),
                  Text(
                    card.firstname,
                    style: ApptextStyle.MY_CARD_SUBTITLE,
                  ),
                  Text(
                    "NATIONALITY",
                    style: ApptextStyle.MY_CARD_TITLE,
                  ),
                  Text(
                    card.nationality,
                    style: ApptextStyle.MY_CARD_SUBTITLE,
                  ),
                  Text(
                    "DATE OF BIRTH",
                    style: ApptextStyle.MY_CARD_TITLE,
                  ),
                  Text(
                    card.dob,
                    style: ApptextStyle.MY_CARD_SUBTITLE,
                  ),
                  Text(
                    "PERSONAL ID NUMBER",
                    style: ApptextStyle.MY_CARD_TITLE,
                  ),
                  Text(
                    card.idnumber,
                    style: ApptextStyle.MY_CARD_SUBTITLE,
                  ),
                  Text(
                    "DOCUMENT NUMBER",
                    style: ApptextStyle.MY_CARD_TITLE,
                  ),
                  Text(
                    card.docnumber,
                    style: ApptextStyle.MY_CARD_SUBTITLE,
                  ),
                  Text(
                    "PLACE OF INSURANCE",
                    style: ApptextStyle.MY_CARD_TITLE,
                  ),
                  Text(
                    card.placeofinsurance,
                    style: ApptextStyle.MY_CARD_SUBTITLE,
                  ),
                  Text(
                    "DATE OF INSURANCE",
                    style: ApptextStyle.MY_CARD_TITLE,
                  ),
                  Text(
                    card.doi,
                    style: ApptextStyle.MY_CARD_SUBTITLE,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DATE OF EXPIRY",
                            style: ApptextStyle.MY_CARD_TITLE,
                          ),
                          Text(
                            card.expirydate,
                            style: ApptextStyle.MY_CARD_SUBTITLE,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/avatar3.png'),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
