import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
// void main() {
//   runApp(MyQRPage());
// }

// class MyQRPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyQRCodeGenerator(),
//     );
//   }
// }

class MyQRPage extends StatelessWidget {
  const MyQRPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'My QR',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 5,
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
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
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [Text("Towhidul Islam"), Text("01521401825")],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: QrImageView(
                  data: "01521401825",
                  version: QrVersions.auto,
                  size: 200.0,
                  gapless: true,
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Material(
                      elevation: 5.0, // Set the elevation (shadow) here
                      borderRadius: BorderRadius.circular(
                          8.0), // Set border radius if needed
                      child: InkWell(
                        onTap: () {
                          // converQrCodeToImage();
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 12.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  8.0), // Set border radius if needed
                              color:
                                  Colors.white, // Set button background color
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Icon(Icons.share_sharp),
                                ),
                                Text(
                                  'Share QR',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Material(
                      elevation: 5.0, // Set the elevation (shadow) here
                      borderRadius: BorderRadius.circular(
                          8.0), // Set border radius if needed
                      child: InkWell(
                        onTap: () {
                          // Handle button tap
                          print('Button tapped');
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 12.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  8.0), // Set border radius if needed
                              color:
                                  Colors.white, // Set button background color
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Icon(Icons.download),
                                ),
                                Text(
                                  'Download QR',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ))
          ],
        ));
  }
}
