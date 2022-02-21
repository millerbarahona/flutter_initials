import 'package:flutter/material.dart';

import 'package:flutter_components/router/app_routes.dart';
import 'package:flutter_components/theme/app_theme.dart';
//import 'package:flutter_components/screens/screens.dart'; es un archivo barril que contiene todas las importaciones de las screens para no llenar el archivo de imports

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),//rutas para navegar a diferentes pantallas,
      onGenerateRoute: AppRoutes.onGenerateRoute, //genera la route que se este llamando y no exista
      theme: AppTheme.lightTheme,
    );
  }
}
