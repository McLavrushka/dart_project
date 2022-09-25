import 'package:flutter/material.dart';
import 'package:flutter_todo/pages/home.dart';
import 'package:flutter_todo/pages/main_screen.dart';
import 'package:flutter_todo/pages/timetable.dart';
import 'package:flutter_todo/pages/lenta.dart';
import 'package:flutter_todo/pages/homework.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.blueAccent,
  ),
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/': (context) => MainScreen(),
    '/todo': (context) => Home(),
    '/todo/timetable': (context) => Timetable(),
    '/todo/lenta': (context) => Lenta(),
    '/todo/homework': (context) => Homework(),
},

));