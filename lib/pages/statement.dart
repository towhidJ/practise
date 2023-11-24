import 'package:flutter/material.dart';
import 'package:practise/data/statement_dummy_list.dart';
import 'package:practise/model/Transaction.dart';
import 'package:practise/widgets/show_statement_modal.dart';

class StatementPage extends StatefulWidget {
  const StatementPage({super.key});

  @override
  State<StatementPage> createState() => _StatementPageState();
}

class _StatementPageState extends State<StatementPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Statement',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 5,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text("Filter By"),
                          ),
                          Padding(
                              padding: EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  OutlinedButton(
                                    onPressed: () {},
                                    child: Text("+ IN"),
                                    style: OutlinedButton.styleFrom(
                                      primary: Colors.green,
                                      // , // Text color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            20.0), // Adjust the radius as needed
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  OutlinedButton(
                                    onPressed: () {},
                                    child: Text("- OUT"),
                                    style: OutlinedButton.styleFrom(
                                      primary: Colors.red,
                                      // , // Text color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            20.0), // Adjust the radius as needed
                                      ),
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                      Expanded(
                          // padding: EdgeInsets.only(left: 5, right: 5),
                          child: Container(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        margin: EdgeInsets.only(bottom: 23),
                        child: ListView.separated(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  showModal(context, transactionList[index]);
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  child: ListTile(
                                      leading: Image.asset(
                                        transactionList[index].imageUrl,
                                        height: 50,
                                        width: 50,
                                      ),
                                      title: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            transactionList[index].transName,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          transactionList[index].name != ""
                                              ? Text(
                                                  transactionList[index].name,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              : SizedBox(
                                                  height: 0,
                                                ),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 5),
                                              child: Text(
                                                  transactionList[index]
                                                      .accNumber,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500)))
                                        ],
                                      ),
                                      subtitle: Padding(
                                          padding:
                                              EdgeInsets.symmetric(vertical: 5),
                                          child: Text(getCurrentDate(),
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      trailing: SingleChildScrollView(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              'TrxID: ${transactionList[index].transactionID}',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12,
                                              ),
                                            ),
                                            Text(
                                                '৳ ${transactionList[index].type == "OUT" ? -transactionList[index].amount : transactionList[index].amount}',
                                                style: transactionList[index]
                                                            .type ==
                                                        "IN"
                                                    ? TextStyle(
                                                        color: Colors.green,
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.w600)
                                                    : TextStyle(
                                                        color: Colors.red,
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.w600)),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  bottom: 5, top: 5),
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                size: 15,
                                              ),
                                            )
                                          ],
                                        ),
                                      )),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return Divider(
                                height: 0,
                                thickness: 1,
                              );
                            },
                            itemCount: transactionList.length),
                      ))
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
