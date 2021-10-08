import 'package:flutter/material.dart';
import 'splash.dart';
import 'loginScreen.dart';

class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

@override
class _AuthenState extends State<Authen> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                height: 500,
                width: 500,
                child: Image(
                  image: AssetImage('with/AIT.png'),
                )),
            Container(
              child: ElevatedButton(
                  child: Text(
                    'Proceed to Login',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => loginScreen()),
                    );
                  }),
            ),
          ]),
        ));
  }
}
