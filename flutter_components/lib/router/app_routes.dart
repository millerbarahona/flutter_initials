import 'package:flutter/material.dart';
import 'package:flutter_components/models/menu_option.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_max_rounded),
    MenuOption(route: 'listview1' , name: 'List View 1', screen: const ListView1Screen(), icon: Icons.list_rounded),
    MenuOption(route: 'listview2' , name: 'List View 2', screen: const ListView2Screen(), icon: Icons.list_alt_rounded),
    MenuOption(route: 'card' , name: 'Card', screen: const CardScreen(), icon: Icons.card_giftcard_rounded),
    MenuOption(route: 'alert' , name: 'Alert', screen: const AlertScreen(), icon: Icons.add_alert_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({
        option.route: (BuildContext context) => option.screen
      });
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   rutas para navegar a diferentes pantallas
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'alert': (BuildContext context) => const AlertScreen()
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    //genera la route que se este llamando y no exista
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
