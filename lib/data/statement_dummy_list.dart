import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String getCurrentDate() {
  var now = DateTime.now();
  var formatter = DateFormat('dd-MM-yy hh:mm a');
  return formatter.format(now);
}

double ht = 30;
double wd = 30;
var statementItem = [
  ListTile(
    leading: Image.asset(
      'assets/icons/qr-code.png',
      height: ht,
      width: wd,
    ),
    title: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text("My QR"), Text("143113****227")],
    ),
    subtitle: Text(getCurrentDate()),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text("TrxID: 423334492048"),
        Text("৳ 10398"),
        Icon(
          Icons.arrow_forward_ios,
        )
      ],
    ),
  ),
  ListTile(
    leading: Image.asset(
      'assets/icons/qr-code.png',
      height: ht,
      width: wd,
    ),
    title: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text("My QR"), Text("143113****227")],
    ),
    subtitle: Text(getCurrentDate()),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text("TrxID: 423334492048"),
        Text("৳ 10398"),
        Icon(
          Icons.arrow_forward_ios,
        )
      ],
    ),
  ),
  ListTile(
    leading: Image.asset(
      'assets/icons/bill.png',
      height: ht,
      width: wd,
    ),
    title: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text("Dhaka Wasa"), Text("143113****227")],
    ),
    subtitle: Text(getCurrentDate()),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text("TrxID: 423334492048"),
        ),
        Text("৳ 10398"),
        Icon(
          Icons.arrow_forward_ios,
        )
      ],
    ),
  ),
];
