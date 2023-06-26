import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

//todo
final List<String> tarefas = <String>[
  'cortar grama',
  'trabalho mobile',
  'academia',
  'assistir BM'
];

@override
class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "A fazer",
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
                  //inicio
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: tarefas.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        color: Colors.green,
                        child: Center(child: Text('${tarefas[index]}')),
                      );
                    },
                  )
                  //fim
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
                      onPressed: () {},
                      child: Icon(Icons.list, color: Colors.green),
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
