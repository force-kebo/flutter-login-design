import 'package:flutter/material.dart';
import 'package:aplikasi_pembelian_alat_musik/login_page.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  }; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
