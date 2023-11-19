import 'package:flutter/material.dart';

class HomeFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: AppBar(
            title: Column(
              children: [
                Text(
                  "Towhidul Islam",
                  style: TextStyle(fontSize: 14),
                ),
                GestureDetector(
                  child: Text(
                    '01521401825',
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ],
            ),
            leading: Container(
                margin: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/iw.png'),
                )),
            centerTitle: true,
            toolbarOpacity: 1,
            toolbarHeight: 60,
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.account_circle_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
            ],
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.send), Text("Home Page")],
            ),
            Row()
          ],
        ),
      ),
    );
  }
}
