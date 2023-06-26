import 'package:flutter/material.dart';

void main() {
  runApp(Perfil());
}

class Perfil extends StatefulWidget {
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Perfil",
            style: TextStyle(
              fontFamily: "roboto",
              fontSize: 30,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Icon(Icons.photo, size: 150),
                  Text('Foto de perfil',
                      style: TextStyle(fontFamily: "roboto", fontSize: 30)),
                  Container(height: 40),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green, fixedSize: Size(200, 50)),
                    onPressed: () {
                      Navigator.pushNamed(context, '/perfil');
                    },
                    child: Text('Mudar Nome'),
                    //Icon(Icons.view_comfortable_rounded),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green, fixedSize: Size(200, 50)),
                    onPressed: () {
                      Navigator.pushNamed(context, '/perfil');
                    },
                    child: Text('Mudar email'),
                    //Icon(Icons.view_comfortable_rounded),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green, fixedSize: Size(200, 50)),
                    onPressed: () {
                      Navigator.pushNamed(context, '/perfil');
                    },
                    child: Text('Mudar numero'),
                    //Icon(Icons.view_comfortable_rounded),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent, fixedSize: Size(200, 50)),
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text('Sair'),
                    //Icon(Icons.view_comfortable_rounded),
                  ),
                  Container()
                ],
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
                      onPressed: () {
                        Navigator.pushNamed(context, '/geladeira');
                      },
                      child: Icon(Icons.view_comfortable_rounded),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      onPressed: () {},
                      child: Icon(Icons.person, color: Colors.green),
                    ),
                  ]),
            )
          ], // column children
        ),
      ),
    );
  }
}
