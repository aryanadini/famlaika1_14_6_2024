import 'dart:convert';

import 'package:famlaika1/pages/addmember_view.dart';
import 'package:famlaika1/pages/famtree_view.dart';
import 'package:famlaika1/pages/home.dart';
import 'package:famlaika1/pages/home2.dart';
import 'package:famlaika1/pages/login_view.dart';
import 'package:famlaika1/pages/splash_view.dart';

import 'package:flutter/material.dart';


void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(


      ),
      home:
      Home2(),
      debugShowCheckedModeBanner: false,
    );
  }
}
