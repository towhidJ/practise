import 'package:flutter/material.dart';
import 'package:practise/data/home_page_first_part.dart';

import '../Fragment/MoreFragment.dart';

class OtherServicePartHome extends StatefulWidget {
  const OtherServicePartHome({super.key});

  @override
  State<StatefulWidget> createState() => OtherServicePartHomeState();
}

class OtherServicePartHomeState extends State<OtherServicePartHome> {
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
    return Container(
        height: 200,
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
                        child: otherService[index],
                      ),
                    );
                  },
                  itemCount: otherService.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, childAspectRatio: 1.2),
                ),
              ),
            ),
          ],
        ));
  }
}
