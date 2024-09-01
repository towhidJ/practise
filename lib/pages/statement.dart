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
  List<TransactionModel> filteredList = [];

  @override
  void initState() {
    super.initState();
    // Initialize the filtered list with the original list
    filteredList.addAll(transactionList);
  }

  void filterList(int filter) {
    setState(() {
      if (filter.isNaN) {
        // If the filter is empty, show the original list
        filteredList.clear();
        filteredList.addAll(transactionList);
      } else {
        // Filter the list based on the given criteria (for simplicity, case insensitive matching)
        filteredList =
            transactionList.where((item) => item.tCode == filter).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // setStatusBarColor(Colors.white);

    filteredList.sort((a, b) => b.tId!.compareTo(a.tId!));
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
                                    onPressed: () {
                                      filterList(1);
                                    },
                                    child: Text("+ IN"),
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: Colors.green,
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
                                    onPressed: () {
                                      filterList(2);
                                    },
                                    child: Text("- OUT"),
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: Colors.red,
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
                                  showModal(context, filteredList[index]);
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(top: 1, bottom: 1),
                                  child: ListTile(
                                      leading: Image.asset(
                                        filteredList[index].tImage!,
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
                                            filteredList[index].tType!,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          filteredList[index].tName != ""
                                              ? Text(
                                                  filteredList[index].tName!,
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
                                                  EdgeInsets.only(bottom: 1),
                                              child: Text(
                                                  filteredList[index]
                                                      .tAccNumber!,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w500)))
                                        ],
                                      ),
                                      subtitle: Padding(
                                          padding:
                                              EdgeInsets.symmetric(vertical: 1),
                                          child: Text(getCurrentDate(),
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 8,
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
                                              'TrxID: ${filteredList[index].transactionID!}',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10,
                                              ),
                                            ),
                                            Text(
                                                '৳ ${filteredList[index].tCode == 2 ? -filteredList[index].tAmt! : filteredList[index].tAmt!}',
                                                style: filteredList[index]
                                                            .tCode ==
                                                        1
                                                    ? TextStyle(
                                                        color: Colors.green,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w600)
                                                    : TextStyle(
                                                        color: Colors.red,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w600)),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  bottom: 1, top: 1),
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                size: 12,
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
                            itemCount: filteredList.length),
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
