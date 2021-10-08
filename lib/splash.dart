import 'package:flutter/material.dart';
import 'package:flutterexam/nav.dart';

import 'authen.dart';

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
    await Future.delayed(Duration(milliseconds: 3000), () {});
    // the code to go to the next screen/page
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Authen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(
          image: AssetImage('assets/AIT.png'),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const splash(),
    );
  }
}
