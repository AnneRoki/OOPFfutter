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
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Account Number:   XXXXXX98',
                  style: TextStyle(fontSize: 23, color: Colors.black), 
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Container(
              height: 150,
              width: 700,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Balance: \n 500,000',
                  style: TextStyle(fontSize: 40, color: Colors.black), 
                ),
              ),  
            ),
            Padding(padding: EdgeInsets.all(5)),
            Container(
              height: 300, 
              width: 700,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Container(
                    height: 50, 
                    width: 50,
                    color: Colors.white,
                  ), 
                  Container(
                    height: 50, 
                    width: 50,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
