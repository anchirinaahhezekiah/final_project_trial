import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'components/home_screen.dart';

void main() => runApp(ForexAssistantApp());

class ForexAssistantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Forex Trading Assistant',
      theme: ThemeData(
        primaryColor: Colors.blueGrey[900],
        // accentColor: Colors.amber,
        textTheme: TextTheme(
            // bodyText1: TextStyle(color: Colors.white, fontSize: 16),
            ),
      ),
      home: HomeScreen(),
    );
  }
}
