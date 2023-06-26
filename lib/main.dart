import 'package:flutter/material.dart';
import 'package:hocon/src/geladeira.dart';
import 'package:hocon/src/perfil.dart';
import 'src/cadastro.dart';
import 'src/login.dart';
import 'src/afazer.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/login': (context) => Login(),
          '/cadastro': (context) => Cadastro(),
          '/afazer': (context) => Home(),
          '/geladeira': (context) => Geladeira(),
          '/perfil': (context) => Perfil()
        },
        initialRoute: '/login');
  }
}
