import 'package:flutter/material.dart';

import '../model/Transaction.dart';

void showModal(BuildContext context, TransactionModel item) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: 270,
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  item.tType,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Table(
                border: TableBorder.all(color: Colors.black12, width: 1),
                defaultVerticalAlignment: TableCellVerticalAlignment.top,
                children: [
                  TableRow(children: [
                    TableCell(
                        child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("Name:"), Text(item.tName!)],
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
                                Text(item.tAccNumber!)
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
                        children: [Text("Amount:"), Text(item.tAmt.toString())],
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
                                Text(item.tCharge.toString())
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
                          Text(item.tTime.toString())
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
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Reference:"), Text(item.tReference)],
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
