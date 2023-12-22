import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practise/model/Transaction.dart';
import 'package:practise/widgets/send_money_dialog.dart';

class SendMoneyPage extends StatefulWidget {
  const SendMoneyPage({super.key});

  @override
  State<SendMoneyPage> createState() => _SendMoneyPageState();
}

class _SendMoneyPageState extends State<SendMoneyPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _textNumberController = TextEditingController();
  TextEditingController _textAmtController = TextEditingController();
  TextEditingController _textRefController = TextEditingController();

  TransactionModel _transtion = TransactionModel();
  Map<String, dynamic> item = {
    "number": "",
    "amount": 0.0,
    "ref": "",
    "pin": ""
  };

  TextEditingController _textPinController = TextEditingController();
  // late TransactionModel item;
  @override
  void dispose() {
    // Dispose of the TextEditingController when done to free up resources
    _textNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // setStatusBarColor(Colors.white);

    TextStyle textStyleInput =
        TextStyle(fontWeight: FontWeight.bold, fontSize: 18);
    TextStyle textStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 222, 222, 224),
      appBar: AppBar(
        title: Text(
          'Send Money',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 5,
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                          padding: EdgeInsets.only(top: 60),
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: () {},
                            child: Column(children: [
                              Image.asset(
                                'assets/icons/qr-code.png',
                                height: 60,
                                width: 50,
                              ),
                              Text("Tap to Scan")
                            ]),
                          )),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Receiver Number",
                          style: textStyle,
                        ),
                        TextFormField(
                          validator: (value) =>
                              value!.isEmpty || value.length < 11
                                  ? "Enter Correct Receiver Number"
                                  : null,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: _textNumberController,
                          style: textStyleInput,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Enter Receiver Number',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.transparent, // No border color
                              ),
                              borderRadius: BorderRadius.circular(
                                  5.0), // Set the border radius
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.transparent, // No border color
                              ),
                              borderRadius: BorderRadius.circular(
                                  5.0), // Set the border radius
                            ),
                            filled: true,
                            fillColor: Colors.white70,
                          ),
                        ),
                        Text(
                          "Reference",
                          style: textStyle,
                        ),
                        Container(
                          height: 80,
                          alignment: Alignment.center,
                          child: TextFormField(
                            style: textStyleInput,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: 'Reference',
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent, // No border color
                                ),
                                borderRadius: BorderRadius.circular(
                                    5.0), // Set the border radius
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent, // No border color
                                ),
                                borderRadius: BorderRadius.circular(
                                    5.0), // Set the border radius
                              ),
                              filled: true,
                              fillColor: Colors.white70,
                            ),
                          ),
                        ),
                        Text(
                          "Amount",
                          style: textStyle,
                        ),
                        Container(
                          height: 80,
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: TextFormField(
                            style: textStyleInput,
                            controller: _textAmtController,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: 'Amount',
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent, // No border color
                                ),
                                borderRadius: BorderRadius.circular(
                                    5.0), // Set the border radius
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent, // No border color
                                ),
                                borderRadius: BorderRadius.circular(
                                    5.0), // Set the border radius
                              ),
                              filled: true,
                              fillColor: Colors.white70,
                            ),
                            validator: (value) =>
                                value!.isEmpty ? "Amount Can't Blank" : null,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                        ),
                        Text(
                          "PIN",
                          style: textStyle,
                        ),
                        Container(
                          height: 80,
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: TextFormField(
                            style: textStyleInput,
                            validator: (value) => value!.isEmpty
                                ? "Enter Wallet Pin"
                                : value.length < 4
                                    ? "PIN Must Be 4 Digit"
                                    : null,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: _textPinController,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            keyboardType: TextInputType.number,
                            obscureText: true,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: 'PIN',
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent, // No border color
                                ),
                                borderRadius: BorderRadius.circular(
                                    5.0), // Set the border radius
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent, // No border color
                                ),
                                borderRadius: BorderRadius.circular(
                                    5.0), // Set the border radius
                              ),
                              filled: true,
                              fillColor: Colors.white70,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: SizedBox(
                              width: double.infinity,
                              height: 45,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState?.validate() ??
                                      false) {
                                    item['number'] = _textNumberController.text;
                                    item['amount'] = double.parse(
                                        _textNumberController.text);
                                    item['ref'] = _textNumberController.text;
                                    item['pin'] = _textNumberController.text;

                                    showSendMoneyDialog(context, item);
                                  }

                                  // Access the text entered in the TextField
                                },
                                child: Text('NEXT'),
                              )),
                        )
                      ],
                    ),
                  ]),
            ),
          )),
    );
  }
}
