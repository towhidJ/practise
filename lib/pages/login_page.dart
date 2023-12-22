// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practise/model/UserModel.dart';
import 'package:practise/screens/home.dart';
import 'package:practise/widgets/login_dialog.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _textNumber = TextEditingController();
  TextEditingController _textPin = TextEditingController();

  TextStyle textStyleInput =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 18);
  TextStyle textStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 18);
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Container(
          child: AppBar(
            backgroundColor: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20.0), // Adjust the radius as needed
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text(
                        "বাংলা",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.zero,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                          padding: EdgeInsets.only(top: 10),
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: () {},
                            child: Column(children: [
                              Image.asset(
                                'assets/icons/iw.png',
                                height: 150,
                                width: 250,
                                fit: BoxFit.fill,
                              ),
                            ]),
                          )),
                    ),
                  ]),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: TextFormField(
                              style: textStyleInput,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: "Wallet Number",
                                labelStyle: TextStyle(color: Colors.grey),
                              ),
                              textAlign: TextAlign.start,
                              validator: (value) =>
                                  value!.isEmpty || value.length < 11
                                      ? "Enter Correct Receiver Number"
                                      : null,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: _textNumber,
                            )),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: TextFormField(
                            style: textStyleInput,
                            controller: _textPin,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                                labelText: "Wallet Pin",
                                labelStyle: TextStyle(color: Colors.grey),
                                suffix: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  icon: _obscureText
                                      ? Icon(Icons.visibility)
                                      : Icon(Icons.visibility_off),
                                )),
                            obscureText: _obscureText,
                            validator: (value) => value!.isEmpty
                                ? "Enter Wallet Pin"
                                : value.length < 4
                                    ? "PIN Must Be 4 Digit"
                                    : null,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {}, child: Text("Forget PIN?"))
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: SizedBox(
                              width: double.infinity,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState?.validate() ??
                                      false) {
                                    handleLogin();
                                    // Navigator.pushReplacement(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (
                                    //       context,
                                    //     ) =>
                                    //         Home(),
                                    //   ),
                                    // );
                                  }
                                },
                                child: Text(
                                  'LOGIN',
                                  style: textStyle,
                                ),
                              )),
                        )
                      ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void handleLogin() {
    String enteredUsername = _textNumber.text;
    String enteredPassword = _textPin.text;
    userList.forEach((e) {
      if (e.phone == enteredUsername) {
        print("ok");
      } else {
        print("no");
      }
    });
    // Check if the entered username and password match any user in the list
    var matchingUser = userList.firstWhereOrNull(
        (user) => user.phone == enteredUsername && user.pin == enteredPassword);
    print(matchingUser);
    if (matchingUser != null) {
      // Successful login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (
            context,
          ) =>
              Home(),
        ),
      );
    } else {
      // Failed login
      loginDialog(context);
      // showDialog(
      //   context: context,
      //   builder: (BuildContext context) {
      //     return AlertDialog(
      //       title: Text('Login Failed'),
      //       content: Text('Invalid username or password.'),
      //       actions: [
      //         TextButton(
      //           onPressed: () {
      //             Navigator.of(context).pop();
      //           },
      //           child: Text('OK'),
      //         ),
      //       ],
      //     );
      //   },
      // );
    }
  }
}

extension IterableExtension<E> on Iterable<E> {
  E? firstWhereOrNull(bool Function(E element) test) {
    for (final E element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}
