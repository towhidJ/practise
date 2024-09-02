import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:practise/data/more_list_item.dart';
import 'package:practise/pages/limit_charges.dart';
import 'package:practise/pages/login_page.dart';
import 'package:practise/pages/my_qr_code.dart';
import 'package:practise/pages/statement.dart';
import 'package:practise/utils.dart';

class MoreFragment extends StatefulWidget {
  const MoreFragment({super.key});
  @override
  State<StatefulWidget> createState() => _MoreFragmentState();
}

class _MoreFragmentState extends State<MoreFragment> {
  Uint8List? _image;

  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);

    setState(() {
      _image = img;
    });
  }

  bool isSwitched = false;

  void showLoadingAnimation(BuildContext context, int index) {
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

    const map = {0: MyQRPage(), 1: StatementPage(), 2: LimitAndChargePage()};
    // Simulate a short delay before navigating
    Future.delayed(Duration(seconds: 1), () {
      // Hide the loading animation dialog
      Navigator.of(context).pop();

      // Navigate to the next page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => map[index]!),
      );
    });
  }

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
            height: 220,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          _image != null
                              ? Container(
                                  margin: EdgeInsets.only(
                                      top: 15, bottom: 20, left: 5),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage: MemoryImage(_image!),
                                    radius: 40,
                                  ),
                                )
                              : Container(
                                  margin: EdgeInsets.only(
                                      top: 15, bottom: 20, left: 5),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/iw.png'),
                                    radius: 40,
                                  ),
                                ),
                          Positioned(
                            child: IconButton(
                              onPressed: selectImage,
                              icon: Icon(Icons.add_a_photo),
                            ),
                            bottom: 10,
                            left: 50,
                          )
                        ],
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
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
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
                          child:
                              Text("Enable/Disable Biometric Authentication"),
                        ),
                        Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            })
                      ],
                    ),
                    Expanded(
                      child: ListView.separated(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                showLoadingAnimation(context, index);
                              },
                              child: SizedBox(
                                  height: 47, child: morelistItem[index]),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider(
                              height: 0,
                              thickness: 1,
                            );
                          },
                          itemCount: morelistItem.length),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
