import 'package:flutter/material.dart';

void main() {
  runApp(Geladeira());
}

class Geladeira extends StatefulWidget {
  _GeladeiraState createState() => _GeladeiraState();
}

final List<String> itens = <String>['Arroz', 'Miojo', 'Pringles', 'Peras'];

final List<int> quantias = <int>[1, 4, 6, 7];

class _GeladeiraState extends State<Geladeira> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Estoque",
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
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: itens.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        color: Colors.green,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('${itens[index]} : ${quantias[index]}'),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.greenAccent),
                                  onPressed: () {},
                                  child: Text('+')),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.redAccent),
                                  onPressed: () {},
                                  child: Text('-')),
                            ]),
                      );
                    },
                  )
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
