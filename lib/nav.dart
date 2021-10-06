import 'package:flutter/material.dart';
import 'package:flutterexam/dashboard.dart';

class navigation extends StatefulWidget {
  const navigation({Key? key}) : super(key: key);

  @override
  _navigationState createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  //page selector
  int _pageIndex = 0;
  //page navigation
  List<Widget> _options = <Widget>[
    Dashboard(),
    Text('Temporarily blank'),
  ];
  //navigtion tap function
  void _ontap(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AIT Banking'),
      ),
      body: Center(
        child: _options.elementAt(_pageIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet_giftcard_outlined), label: 'Transfer'),
        ],
        currentIndex: _pageIndex,
        onTap: _ontap,
      ),
    );
  }
}