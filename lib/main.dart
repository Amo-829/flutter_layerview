import 'package:flutter/material.dart';
import 'Course.dart';
import 'classes/Amo.dart';
import 'classes/Denglu.dart';
import 'classes/Mine.dart';
import 'classes/chat.dart';
import 'classes/home.dart';
import 'classes/layers.dart';
import 'classes/view.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          accentColor: Colors.black12,
        ),
        home: Course(),
    );
  }
}
