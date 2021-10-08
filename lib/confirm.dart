import 'package:flutter/material.dart';

class confirm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<confirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transfer Money')),
      body: Container(
          width: 600,
          color: Colors.yellow[100],
          child: Column(children: [
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    height: 300,
                    width: 300,
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.yellow,
                    ),
                    child: Column(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                child: Text(
                              "Transfer Amount",
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )),
                            Container(
                                child: Text(
                              "Amount",
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )),
                          ]),
                      Padding(padding: EdgeInsets.all(20)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                child: Text(
                              "Account Number",
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )),
                            Container(
                                child: Text(
                              "#Number",
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )),
                          ]),
                      Padding(padding: EdgeInsets.all(20)),
                      Center(
                          child: ElevatedButton(
                              child: Text(
                                "Confirm",
                                style: TextStyle(fontSize: 20),
                              ),
                              onPressed: () {})),
                    ])))
          ])),
    );
  }
}
