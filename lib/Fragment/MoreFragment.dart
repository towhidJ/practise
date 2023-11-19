import 'package:flutter/material.dart';

class MoreFragment extends StatelessWidget {
  const MoreFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Container(
          child: AppBar(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 215,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15, bottom: 20, left: 5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/iw.png'),
                          radius: 40,
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Towhidul Islam",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              "01521401825",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "Customer Account",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "towhidulislamcse@gmail.com",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                          padding: EdgeInsets.only(right: 40, top: 20),
                          onPressed: () {},
                          icon: Icon(
                            Icons.logout,
                            size: 40,
                            color: Colors.red,
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(
            height: 1,
            thickness: 2,
            color: Colors.black, // Color of the line
            indent: 0, // Indentation from the left
            endIndent: 0,
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 500,
              // color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
