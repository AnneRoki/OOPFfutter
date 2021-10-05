import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: GridView.count(
      mainAxisSpacing: 15,
      crossAxisSpacing: 10,
      crossAxisCount: 1,
      children: [
        Card(
          child: Column(
            children: [
              ListTile(
                title: Text('Account Savings'),
                subtitle: Text('Amount'),
              ),
            ],
          ),
        )
      ],
    ));
  }
}

//// push testing
