import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new ProfilePage(),
      theme: new ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ProfilePageState();
  }
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('@JuanDC'),
        leading: Icon(Icons.account_circle),
      ),
      backgroundColor: Colors.yellow[100],
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
              height: 50,
              width: 700,
              decoration: BoxDecoration(
                  color: Colors.yellow[100],
                  borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Details',
                  style: TextStyle(fontSize: 20, color: Colors.black), 
                ),
              ),  
            ), 
            Padding(padding: EdgeInsets.all(5)),
            Container(
              height: 120,
              width: 600,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Name:            Juan Dela Cruz'+ 
                  '\nBirth date:      5/25/1995'+
                  '\nNationality:    Filipino' +
                  '\nAddress:        Davao City',
                  style: TextStyle(fontSize: 21, color: Colors.black), 
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Container(
              height: 50,
              width: 700,
              decoration: BoxDecoration(
                  color: Colors.yellow[100],
                  borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Your card',
                  style: TextStyle(fontSize: 20, color: Colors.black), 
                ),
              ),  
            ), 
            Padding(padding: EdgeInsets.all(5)),
            Container(
              height: 215, 
              width: 700,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'AIT Bank' + 
                  '\n\n\nXXXXXX XXXX XXXX 12'+
                  '\n\n\nJuan Dela Cruz',
                  style: TextStyle(fontSize: 20, color: Colors.blueGrey), 
                ),
              ),  
            ), 
          ]
      ),
      ),
    );
  }
}