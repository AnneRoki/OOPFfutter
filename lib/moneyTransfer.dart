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
  }
}

class MoneyTransferState extends State<MoneyTransfer> {
  TextEditingController textholder = TextEditingController();
  TextEditingController accountnum = TextEditingController();
  // @override
  // void dispose() {
  //   textholder.dispose();
  //   super.dispose();
  // }

  clearText() {
    textholder.clear();
    accountnum.clear();
  }

  int ttt = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Transfer Money'),
          backgroundColor: Colors.yellow,
        ),
        backgroundColor: Colors.yellow[100],
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(25),
              child: Container(
                height: 298,
                width: 600,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Container(
                            height: 260,
                            width: 600,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: EdgeInsets.all(30),
                              child: Column(
                                children: [
                                  Text('Enter an ammount to transfer'),
                                  Padding(padding: EdgeInsets.all(6)),
                                  Container(
                                    height: 30,
                                    width: 400,
                                    child: TextField(
                                      controller: textholder,
                                      style: TextStyle(height: 0.8),
                                      decoration: InputDecoration(
                                          hintText: 'ammount',
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20))),
                                      keyboardType: TextInputType.number,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.all(6)),
                                  Text(
                                    'Receivers Account number',
                                  ),
                                  Padding(padding: EdgeInsets.all(6)),
                                  Container(
                                    height: 30,
                                    width: 400,
                                    child: TextField(
                                      controller: accountnum,
                                      style: TextStyle(height: 0.8),
                                      decoration: InputDecoration(
                                          hintText: 'ammount',
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20))),
                                      keyboardType: TextInputType.number,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.all(4)),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.yellow,
                                      onPrimary: Colors.black,
                                    ),
                                    child: Text('Proceed'),
                                    onPressed: () {
                                      _setvar();
                                      clearText();
                                    },
                                  ),
                                  Text(money != null ? '$money' : ""),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }

  void _setvar() {
    setState(() {
      getvalue = int.parse(textholder.text);
      money = money - getvalue;
    });
  }
}
