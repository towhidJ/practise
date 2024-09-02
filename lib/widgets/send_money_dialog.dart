import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practise/model/Transaction.dart';
import 'package:practise/screens/home.dart';

void showSendMoneyDialog(BuildContext context, Map<String, dynamic> item) {



  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white70, borderRadius: BorderRadius.circular(12)),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Image.asset(
              'assets/icons/warning_alart.png',
              // width: 72,
              height: 150,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text(
                "Success",
                style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              item['number'],
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              ),
              
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "Amount: "+ item['amount'].toString(),
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              ),
              
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>Home())
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back),
                        Text(
                          'Back To Page',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  )),
            )
          ]),
        ),
      );
    },
  );
}
