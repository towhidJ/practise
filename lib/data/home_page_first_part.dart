import 'package:flutter/material.dart';

double ht = 40;
double wd = 50;

var menuodel = [
  Column(
    children: [
      Container(
        child: Image.asset(
          'assets/icons/send.png',
          height: ht,
          width: wd,
        ),
      ),
      Text('Send')
    ],
  ),
  Column(
    children: [
      Container(
        child: Image.asset(
          'assets/icons/card-payment.png',
          height: ht,
          width: wd,
        ),
      ),
      Text(
        'Payment',
      )
    ],
  ),
  Column(
    children: [
      Container(
        child: Image.asset(
          'assets/icons/wallet.png',
          height: ht,
          width: wd,
        ),
      ),
      Text('Add Money')
    ],
  ),
  Column(
    children: [
      Container(
        child: Image.asset(
          'assets/icons/money-transaction.png',
          height: ht,
          width: wd,
        ),
      ),
      Text(
        'Transfer Fund',
      )
    ],
  ),
  Column(
    children: [
      Container(
        child: Image.asset(
          'assets/icons/smartphone.png',
          height: ht,
          width: wd,
        ),
      ),
      Text(
        'Mobile Recharge',
       style: TextStyle(fontSize: 5),
      )
    ],
  ),
  Column(
    children: [
      Container(
        child: Image.asset(
          'assets/icons/payment.png',
          height: ht,
          width: wd,
        ),
      ),
      Text(
        'Cash Out',
      )
    ],
  ),
  Column(
    children: [
      Container(
        child: Image.asset(
          'assets/icons/bill.png',
          height: ht,
          width: wd,
        ),
      ),
      Text('Bill Pay')
    ],
  ),

  Column(
    children: [
      Container(
        child: Image.asset(
          'assets/icons/capital.png',
          height: ht,
          width: wd,
        ),
      ),
      Text('Govt Fees')
    ],
  ),
  // Column(
  //   children: [
  //     Container(
  //       child: Image.asset('assets/images/bank_to_cash-removebg-preview.png'),
  //     ),
  //     Text('Remittance')
  //   ],
  // ),
  // Column(
  //   children: [
  //     Container(
  //       child: Image.asset('assets/images/bangla_qr-removebg-preview (1).png'),
  //     ),
  //     Text('Bangla QR')
  //   ],
  // ),
];

var otherService = [
  Column(
    children: [
      Container(
        child: Image.asset(
          'assets/icons/donation.png',
          height: ht,
          width: wd,
        ),
      ),
      Text('Donate')
    ],
  ),
  Column(
    children: [
      Container(
        child: Image.asset(
          'assets/icons/coronabd.png',
          height: ht,
          width: wd,
        ),
      ),
      Text(
        'Corona Info',
      )
    ],
  ),
  Column(
    children: [
      Container(
        child: Image.asset(
          'assets/icons/surokka.png',
          height: ht,
          width: wd,
        ),
      ),
      Text('Vaccine')
    ],
  ),
];
