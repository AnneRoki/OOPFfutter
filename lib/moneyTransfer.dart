import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterexam/confirm.dart';

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
                                  //textfield for amount to be sent
                                  Container(
                                    height: 30,
                                    width: 400,
                                    child: TextField(
                                      controller: textholder,
                                      style: TextStyle(height: 0.8),
                                      decoration: InputDecoration(
                                          hintText: 'amount',
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
                                  //textfield for account num
                                  Container(
                                    height: 30,
                                    width: 400,
                                    child: TextField(
                                      controller: accountnum,
                                      style: TextStyle(height: 0.8),
                                      decoration: InputDecoration(
                                          hintText: 'Account number',
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20))),
                                      keyboardType: TextInputType.number,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                    ),
                                    //button
                                  ),
                                  Padding(padding: EdgeInsets.all(4)),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.yellow,
                                      onPrimary: Colors.black,
                                    ),
                                    child: Text('Proceed'),
                                    //clearing and saving the values into a variable
                                    onPressed: () {
                                      if (int.parse(textholder.text) < money &&
                                          accountnum.text != '') {
                                        _setvar();
                                        clearText();
                                        final snackBar = SnackBar(
                                          content: const Text('Process done'),
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    confirm()));
                                      } else if (int.parse(textholder.text) >
                                              money &&
                                          accountnum.text == '') {
                                        final snackBar = SnackBar(
                                          content: const Text(
                                              'Please fill in all the blanks'),
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      } else if (int.parse(textholder.text) ==
                                              0 &&
                                          accountnum.text == '') {
                                        final snackBar = SnackBar(
                                          content: const Text(
                                              'Please fill in all the blanks'),
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      } else {
                                        final snackBar = SnackBar(
                                          content: const Text(
                                              'Please fill in all the blanks'),
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      }
                                    },
                                  ),
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

//method to sav the value from the textfield
  void _setvar() {
    setState(() {
      getvalue = int.parse(textholder.text);
      money = money - getvalue;
      getacnum = int.parse(accountnum.text);
      acnum = getacnum;
    });
  }
}
