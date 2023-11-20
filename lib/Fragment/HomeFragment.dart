import 'package:flutter/material.dart';
import 'package:practise/Fragment/MoreFragment.dart';
import 'package:practise/data/home_page_first_part.dart';

class HomeFragment extends StatelessWidget {
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
}
