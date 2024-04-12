import 'package:flutter/material.dart';
import '../screen/screen.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static const String pobreza = 'pobreza';
  static const String hambre = 'hambre';
  static const String salud = 'salud';
  static const String educacion = 'educacion';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'pobreza',
        name: 'Pobreza',
        screen: const PobrezaScreen(),
        icon: Icons.monetization_on),
    MenuOption(
        route: 'hambre',
        name: 'Hambre Cero',
        screen: const HambreScreen(),
        icon: Icons.food_bank),
    MenuOption(
        route: 'salud',
        name: 'Salud y Bienestar',
        screen: const SaludScreen(),
        icon: Icons.health_and_safety),
    MenuOption(
        route: 'educacion',
        name: 'Educación de Calidad',
        screen: const EducacionScreen(),
        icon: Icons.school),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
}

class MenuOption {
  final String route;
  final String name;
  final Widget screen;
  final IconData icon;

  MenuOption({
    required this.route,
    required this.name,
    required this.screen,
    required this.icon,
  });
}
