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
        backgroundColor: Colors.yellow[100],
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                child: Image(
                  image: AssetImage('assets/AIT.png'),
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
