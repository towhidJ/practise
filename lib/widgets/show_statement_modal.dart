import 'package:flutter/material.dart';
import 'package:practise/data/statement_dummy_list.dart';

import '../model/Transaction.dart';

void showModal(BuildContext context, Transaction item) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: 260,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.transName,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Table(
                border: TableBorder.all(color: Colors.white38),
                defaultVerticalAlignment: TableCellVerticalAlignment.top,
                children: [
                  TableRow(children: [
                    TableCell(
                        child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("Name:"), Text(item.name!)],
                      ),
                    )),
                    TableCell(
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("A/C No:"),
                                Text(item.accNumber!)
                              ],
                            )))
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Amount:"),
                          Text(item.amount.toString())
                        ],
                      ),
                    )),
                    TableCell(
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Charge:"),
                                Text(item.charge.toString())
                              ],
                            )))
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Date & Time:"),
                          Text(getCurrentDate())
                        ],
                      ),
                    )),
                    TableCell(
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("TrxID:"),
                                Text(item.transactionID)
                              ],
                            )))
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("Reference:"), Text(item.reference)],
                      ),
                    )),
                    TableCell(
                      child: SizedBox(),
                    ),
                  ]),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
