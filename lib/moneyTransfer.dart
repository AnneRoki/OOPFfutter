import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MoneyTransfer(),
      theme: new ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class MoneyTransfer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MoneyTransferState();
  }
}

class MoneyTransferState extends State<MoneyTransfer> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Transfer Money'),
      ),
      backgroundColor: Colors.white,
      body: new Container(
          padding: const EdgeInsets.all(40.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: new InputDecoration(labelText: 'Enter currency'),
              ),
              TextField(
                decoration:
                    new InputDecoration(labelText: 'Enter amount to transfer'),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
              Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                      onPrimary: Colors.black,
                    ),
                    child: Text('Proceed'),
                    onPressed: () {
                      //////
                    },
                  )),
            ],
          )),
    );
  }
}
