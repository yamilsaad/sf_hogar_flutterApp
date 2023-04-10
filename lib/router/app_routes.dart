import 'package:flutter/material.dart';
import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoutes = 'login';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'listbiew1',
        name: 'Nuevo Cliente',
        scree: Listview1Screen(),
        icon: Icons.contact_page),
    MenuOption(
        route: 'listview2',
        name: 'Configuracion',
        scree: Listview2Screen(),
        icon: Icons.settings_accessibility),
    MenuOption(
        route: 'alert',
        name: 'Clientes',
        scree: const ClienteScreen(),
        icon: Icons.add_alert),
    MenuOption(
        route: 'card',
        name: 'Sucursales',
        scree: const CardScreen(),
        icon: Icons.credit_card),
    MenuOption(
        route: 'avatar',
        name: 'Vendedores',
        scree: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'login': (BuildContext context) => LoginScreen()});
    appRoutes.addAll({'register': (BuildContext context) => RegisterScreen()});
    appRoutes.addAll({'home': (BuildContext context) => HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.scree});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => LoginScreen());
  }
}
