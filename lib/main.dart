import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
//inicio da barra
          title: const Text(
            "Overlord",
            style: TextStyle(
              fontFamily: "roboto",
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
        ),
//fim da barra
        body: Column(
          children: [
            Image(
              width: 1000,
              image: AssetImage('assets/ainz.png'),
            ),
            Container(
              child: Column(
                children: [
                  Icon(Icons.star, color: Colors.purple),
                  Text("07/03/2001")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
