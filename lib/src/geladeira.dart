import 'package:flutter/material.dart';

void main() {
  runApp(Geladeira());
}

class Geladeira extends StatefulWidget {
  _GeladeiraState createState() => _GeladeiraState();
}

class _GeladeiraState extends State<Geladeira> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Geladeira",
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
                child: Text('geladeira'),
              ),
            ),
            Container(
              color: Colors.black,
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      onPressed: () {
                        Navigator.pushNamed(context, '/afazer');
                      },
                      child: Icon(Icons.list),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      onPressed: () {},
                      child: Icon(Icons.view_comfortable_rounded,
                          color: Colors.green),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      onPressed: () {
                        Navigator.pushNamed(context, '/perfil');
                      },
                      child: Icon(Icons.person),
                    ),
                  ]),
            )
          ], // column children
        ),
      ),
    );
  }
}
