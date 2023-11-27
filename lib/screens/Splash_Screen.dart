import 'package:flutter/material.dart';
import 'package:practise/pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateHome();
  }

  _navigateHome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  'assets/images/iw.png',
                  width: 300,
                  height: 300,
                ),
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/loading.gif',
              width: 80,
              height: 80,
            ),
            // CircularProgressIndicator(),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
