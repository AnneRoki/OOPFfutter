import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('AIT Bank', style: new TextStyle(color: Colors.black)),
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: Colors.yellow[100],
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
              height: 80,
              width: 600,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Account Number:',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Container(
              height: 120,
              width: 600,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
