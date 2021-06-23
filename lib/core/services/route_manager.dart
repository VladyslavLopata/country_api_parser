import 'package:country_api_parser/features/country/presentation/pages/concrete_country_page.dart';
import 'package:country_api_parser/features/country_list/presentation/pages/country_page.dart';
import 'package:flutter/material.dart';

const homeRoute = '/home';
const countryPage = '/country';

class RouteManager {
  RouteManager() : navigationKey = GlobalKey<NavigatorState>();

  final Map<String, Widget> _routes = {
    _unknownRoute: const Center(child: Text('No page found!')),
    homeRoute: const CountriesPage(),
    countryPage: const ConcreteCountryPage(),
  };

  static const String _unknownRoute = '/404';

  final GlobalKey<NavigatorState> navigationKey;

  void push(String route, [dynamic arguments]) {
    navigationKey.currentState?.pushNamed(route, arguments: arguments);
  }

  Route<dynamic> onGenerateRoute(RouteSettings settings) => MaterialPageRoute(
        builder: (_) => SafeArea(
          maintainBottomViewPadding: true,
          child: Scaffold(
            body: Builder(
              builder: (_) {
                if (!_routes.containsKey(settings.name)) {
                  return _routes[_unknownRoute]!;
                }
                return _routes[settings.name]!;
              },
            ),
          ),
        ),
        settings: settings,
      );
}
