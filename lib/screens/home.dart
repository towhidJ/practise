import 'package:flutter/material.dart';
import 'package:practise/Fragment/homeFragment.dart';
import 'package:practise/Fragment/moreFragment.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    HomeFragment(),
    MoreFragment()
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeFragment(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.document_scanner_rounded),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 65,
        elevation: 8.0,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.hardEdge,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            MaterialButton(
              onPressed: () {
                setState(() {
                  currentScreen =
                      HomeFragment(); // if user taps on this dashboard tab will be active
                  currentTab = 0;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: Colors.green,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Column(children: [
                Text(
                  "Scan QR",
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                )
              ]),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  currentScreen =
                      MoreFragment(); // if user taps on this dashboard tab will be active
                  currentTab = 1;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.more_horiz_rounded,
                    color: Colors.green,
                  ),
                  Text(
                    'More',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
