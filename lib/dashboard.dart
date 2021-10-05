import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        title: Text('AIT Bank', 
        style: new TextStyle(
          color: Colors.black
          )
          ),
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: Colors.yellow[100],
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,

          children: <Widget>[
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {}, 
                splashColor: Colors.yellow,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget> [
                      Icon(
                        Icons.account_balance_wallet, 
                        size: 70.0
                        ),
                      Text(
                        "Savings account", 
                        style : new TextStyle(
                          fontSize: 17.0
                          )
                          )
                    ],
                  ),
                  ),
                  ),
            ),
             Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {}, 
                splashColor: Colors.yellow,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget> [
                      Icon(
                        Icons.send_to_mobile, 
                        size: 70.0
                        ),
                      Text(
                        "Transfer money", 
                        style : new TextStyle(
                          fontSize: 17.0
                          )
                          )
                    ],
                  ),
                  ),
                  ),
            ), 
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {}, 
                splashColor: Colors.yellow,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget> [
                      Icon(
                        Icons.add, 
                        size: 70.0
                        ),
                      Text(
                        "Add money", 
                        style : new TextStyle(
                          fontSize: 17.0
                          )
                          )
                    ],
                  ),
                  ),
                  ),
            ),
          ],
          ),
      )
    );
  }
}