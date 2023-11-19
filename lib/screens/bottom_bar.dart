import 'package:flutter/material.dart';

import 'more.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Towhidul ISlam"),
      //   titleSpacing: 3,
      //   centerTitle: true,
      //   toolbarOpacity: 1,
      //   toolbarHeight: 60,
      //   elevation: 0,
      //   actions: [
      //     IconButton(
      //         onPressed: () {
      //           MySnackBar("Profile", context);
      //         },
      //         icon: Icon(Icons.account_circle_outlined)),
      //     IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
      //   ],
      // ),
      // bottomNavigationBar: BottomNavigationBar(currentIndex: 0, items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //   BottomNavigationBarItem(icon: Icon(Icons.more), label: "More")
      // ]),

      bottomNavigationBar: BottomAppBar(
        height: 55,
        elevation: 3,
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        clipBehavior: Clip.hardEdge,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            MaterialButton(
              onPressed: () {},
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.green,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.green),
                    )
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 13.0,
              ),
              child:
                  Column(children: [Icon(Icons.more_horiz), Text("Scan QR")]),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => More(),
                    ));
              },
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.more_vert_outlined,
                      color: Colors.green,
                    ),
                    Text(
                      "More",
                      style: TextStyle(color: Colors.green),
                    )
                  ]),
            ),
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.qr_code,
          color: Colors.white,
        ),
      ),

      body: Text("Learn With Towhid"),
      // drawer: (),
      // endDrawer: (),
      // bottomNavigationBar: (),
      // floatingActionButton: (
      // ),
    );
  }
}
