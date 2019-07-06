import 'package:flutter/material.dart';
import 'package:aplikasi_pembelian_alat_musik/profile.dart';
import 'package:aplikasi_pembelian_alat_musik/cart.dart';


class HomePage extends StatefulWidget {
  static String tag = 'home-page'; 
  @override
    State<StatefulWidget> createState() {
      return _HomePageState();
    }
}

class _HomePageState extends State<HomePage> {
  int _SelectedPage = 0;
  final _PageOption = [
    HomePage(),
    profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Home"), backgroundColor: Colors.blueAccent,),
      body: _PageOption[_SelectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _SelectedPage,
        onTap: (int index) {
          setState(() {
           _SelectedPage = index; 
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            title: Text('Cart'),
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Account'),
          ),
        ]
      ),
    );
  }
}