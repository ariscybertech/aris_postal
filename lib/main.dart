import 'package:flutter/material.dart';
import './view/tab/packet/main.dart';
import './view/tab/tab.dart';
import './view/login/main.dart';

void main() => runApp(MyApp());

enum PREFKEY { userId }

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // When we navigate to the "/" route, build the FirstScreen Widget
        '/login': (context) => LoginPage(),
        // When we navigate to the "/second" route, build the SecondScreen Widget
        '/tab': (context) => TabPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: LoginPage(),
    );
  }
}

