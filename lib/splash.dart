import 'package:flutter/material.dart';
import 'package:flutterexam/dashboard.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);
  @override
  _splashState createState() => _splashState();
}

@override
class _splashState extends State<splash> {
  void initState() {
    super.initState();
    navigatetohome();
  }

//this is to move to the home screen
  navigatetohome() async {
    // the duration of the splash screen
    await Future.delayed(Duration(milliseconds: 5000), () {});
    // the code to go to the next screen/page
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Dashboard()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.blue[400],
            ),
            Container(
              child: Text(
                'Splash Screen',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
