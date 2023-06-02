import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Home",
            style: TextStyle(
              fontFamily: "roboto",
              fontSize: 30,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Text('home'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
