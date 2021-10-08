import 'package:flutter/material.dart';
import 'package:flutterexam/ammar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
                  'Balance: \n $money',
                  style: TextStyle(fontSize: 40, color: Colors.black),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(6)),
            Center(
              child: Container(
                  height: 25,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 50,
                    ),
                    child: Text(
                      'Recent Transactions',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            Padding(padding: EdgeInsets.all(6)),
            Container(
              height: 200,
              width: 700,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Account number:\n$acnum\nAmmount transfered: \n$getvalue',
                    style: TextStyle(fontSize: 30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
