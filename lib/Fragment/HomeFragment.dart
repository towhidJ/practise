import 'package:flutter/material.dart';
import 'package:practise/Fragment/MoreFragment.dart';
import 'package:practise/data/home_page_first_part.dart';

class HomeFragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  bool _isAnimation = false;
  bool _isBalanceShown = false;
  bool _isBalance = true;
  double scaleFactor = 1.0;

  void showLoadingAnimation(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent dismissing the dialog
      builder: (context) {
        return Center(
          child: Center(
            child: Image(image: AssetImage('assets/images/loading.gif')),
          ),
        );
      },
    );

    // Simulate a short delay before navigating
    Future.delayed(Duration(seconds: 1), () {
      // Hide the loading animation dialog
      Navigator.of(context).pop();

      // Navigate to the next page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MoreFragment()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
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
                        onPressed: () {},
                        icon: Icon(Icons.account_circle_outlined)),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.notifications))
                  ],
                ),
              ),
              Positioned(
                  right: 130,
                  top: 95,
                  child: InkWell(
                    onTap: animate,
                    child: Container(
                        width: 150,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 2), // changes the shadow position
                              ),
                            ],
                            borderRadius: BorderRadius.circular(50)),
                        child: Stack(alignment: Alignment.center, children: [
                          //Amount
                          AnimatedOpacity(
                              opacity: _isBalanceShown ? 1 : 0,
                              duration: Duration(milliseconds: 500),
                              child: Text('৳ 10',
                                  style: TextStyle(color: Colors.green))),

                          //Balance
                          AnimatedOpacity(
                              opacity: _isBalance ? 1 : 0,
                              duration: const Duration(milliseconds: 300),
                              child: const Text('Tap for balance',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold))),

                          //Circle
                          AnimatedPositioned(
                              duration: const Duration(milliseconds: 1100),
                              left: _isAnimation == false ? 5 : 130,
                              curve: Curves.fastOutSlowIn,
                              child: Container(
                                  height: 20,
                                  width: 20,
                                  // padding: const EdgeInsets.only(bottom: 4),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: const FittedBox(
                                      child: Text('৳',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 17)))))
                        ])),
                  )),
            ],
          )),
      body: Container(
          padding: EdgeInsets.only(top: 15),
          child: Stack(
            children: [
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                  child: GridView.builder(
                    physics:
                        NeverScrollableScrollPhysics(), //cannot scroll the gridview section
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // Check if the first item is tapped (index 0)
                          if (index == 0) {
                            showLoadingAnimation(context);
                          }
                          if (index == 1) {
                            showLoadingAnimation(context);
                          }
                          // You can add similar navigation logic for other items here
                        },
                        child: Container(
                          child: menuodel[index],
                        ),
                      );
                    },
                    itemCount: menuodel.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 14,
                      crossAxisSpacing: 14,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  void animate() async {
    _isAnimation = true;
    _isBalance = false;
    setState(() {});

    await Future.delayed(Duration(milliseconds: 800),
        () => setState(() => _isBalanceShown = true));
    await Future.delayed(
        Duration(seconds: 3), () => setState(() => _isBalanceShown = false));
    await Future.delayed(Duration(milliseconds: 200),
        () => setState(() => _isAnimation = false));
    await Future.delayed(
        Duration(milliseconds: 800), () => setState(() => _isBalance = true));
  }
}
