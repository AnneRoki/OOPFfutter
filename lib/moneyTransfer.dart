import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ammar.dart';

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
    TextField createtext() => TextField();
  }
}

class MoneyTransferState extends State<MoneyTransfer> {
  TextEditingController textholder = TextEditingController();

  @override
  void dispose() {
    textholder.dispose();
    super.dispose();
  }

  clearText() {
    textholder.clear();
  }

  int ttt = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Transfer Money'),
      ),
      backgroundColor: Colors.yellow[100],
      body: new Container(
          padding: const EdgeInsets.all(40.0),
          // ignore: unnecessary_new
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: textholder,
                decoration:
                    new InputDecoration(hintText: 'Enter amount to transfer'),
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
                      _setvar();
                      clearText();
                    },
                  )),
              Container(
                child: Text(money != null ? '$money' : ""),
              ),
            ],
          )),
    );
  }

  void _setvar() {
    setState(() {
      getvalue = int.parse(textholder.text);
      money = money - getvalue;
    });
  }
}
