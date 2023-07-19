import 'package:flutter/material.dart';
import 'package:project/pages/loading.dart';
import 'package:project/pages/location.dart';
import 'package:project/pages/home.dart';

void main() {
  runApp( MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => loading(),
      '/home': (context) => Home(),
      '/location' : (context) => Location(),
    },
  ));
}

