import 'package:flutter/material.dart';

import 'package:flutter_components/screens/screens.dart'; //es un archivo barril que contiene todas las importaciones de las screens para no llenar el archivo de imports

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: { //rutas para navegar a diferentes pantallas
        'home': (context) => const HomeScreen(),
        'listview1': (context ) => const ListView1Screen(),
        'listview2': (context) => const ListView2Screen(),
        'card': (context) => const CardScreen(),
        'alert':(context) => const AlertScreen()
      },
    );
  }
}