import 'package:flutter/material.dart';
import 'package:digisafe_app/Home Page/constants/color_constants.dart';

class CardModel {
  String surname;
  String firstname;
  String nationality;
  String dob;
  String idnumber;
  String docnumber;
  String placeofinsurance;
  String doi;
  String expirydate;
  Color cardColor;

  CardModel({
    required this.surname,
    required this.firstname,
    required this.nationality,
    required this.dob,
    required this.idnumber,
    required this.docnumber,
    required this.placeofinsurance,
    required this.doi,
    required this.expirydate,
    required this.cardColor,
  });
}

List<CardModel> myCards = [
  CardModel(
    surname: "DOE",
    firstname: "JOE",
    nationality: "GHANAIAN",
    dob: "26/09/1986",
    idnumber: "GHA- 125634",
    docnumber: "AC3345677",
    placeofinsurance: "ACCRA",
    doi: "10/02/2021",
    expirydate: "09/02/2031",
    cardColor: kPrimaryColor,
  ),
  CardModel(
    surname: "DOE",
    firstname: "JOE",
    nationality: "GHANAIAN",
    dob: "26/09/1986",
    idnumber: "GHA- 125634",
    docnumber: "AC3345677",
    placeofinsurance: "ACCRA",
    doi: "10/02/2021",
    expirydate: "09/02/2031",
    cardColor: kSecondaryColor,
  ),
  CardModel(
    surname: "DOE",
    firstname: "JOE",
    nationality: "GHANAIAN",
    dob: "26/09/1986",
    idnumber: "GHA- 125634",
    docnumber: "AC3345677",
    placeofinsurance: "ACCRA",
    doi: "10/02/2021",
    expirydate: "09/02/2031",
    cardColor: kSecondaryColor,
  ),
];
