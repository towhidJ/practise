// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:practise/data/statement_dummy_list.dart';

class TransactionModel {
  int tId;
  String transactionID;
  String tImage = "";
  String tType = "";
  late String? tName;
  double tAmt;
  double tCharge;
  late String? tAccNumber;
  String? tTime = getCurrentDate();
  int tCode = 0;
  String tReference = "";
  TransactionModel({
    required this.tId,
    required this.transactionID,
    required this.tImage,
    required this.tType,
    required this.tName,
    required this.tAmt,
    required this.tCharge,
    this.tTime,
    required this.tCode,
    required this.tReference,
    this.tAccNumber,
  });
}

final List<TransactionModel> transactionList = [
  TransactionModel(
    tId: 1,
    tImage: "assets/icons/iw.png",
    tType: "Send money",
    tName: "Salman",
    tAmt: 5000,
    tCharge: 10.0,
    tTime: "7:20 AM 22/08/2022",
    tCode: 2,
    tReference: 'AIBL47867',
    tAccNumber: '01921212',
    transactionID: '5465353275',
  ),
  TransactionModel(
      tId: 2,
      tImage: "assets/icons/aibl.png",
      tType: "Payment",
      tName: "Daraz",
      tAmt: 2900,
      tTime: "12:38 PM 21/08/2022",
      tCode: 2,
      tReference: '7YUYY776',
      tAccNumber: '',
      tCharge: 10.0,
      transactionID: '54565447'),
  TransactionModel(
      tId: 3,
      tImage: "assets/icons/aibl.png",
      tType: "Cash in",
      tName: "RK Telecom",
      tAmt: 500,
      tTime: "8:17 AM 21/08/2022",
      tCode: 1,
      tReference: '',
      tAccNumber: '',
      tCharge: 10,
      transactionID: '42970789776'),
  TransactionModel(
      tId: 4,
      tImage: "assets/icons/airtel.png",
      tType: "Mobile Recharge",
      tName: "Airtel",
      tAmt: 400,
      tTime: "11:22 PM 19/08/2022",
      tCode: 2,
      tReference: '4567FG',
      tAccNumber: '016******91',
      tCharge: 0,
      transactionID: '577655675'),
  TransactionModel(
      tId: 5,
      tImage: "assets/icons/iw.png",
      tType: "Received Money",
      tName: "Rafiq",
      tAmt: 600,
      tTime: "9:20 AM 18/08/2022",
      tCode: 1,
      tReference: 'Aibl890',
      tAccNumber: '0190102***32',
      tCharge: 0,
      transactionID: '43546547546'),
];
