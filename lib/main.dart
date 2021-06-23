import 'package:country_api_parser/core/services/bloc_observer.dart';
import 'package:country_api_parser/core/services/route_manager.dart';
import 'package:country_api_parser/core/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupDependencies();
  Bloc.observer = CustomBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: homeRoute,
      onGenerateRoute: locator<RouteManager>().onGenerateRoute,
      navigatorKey: locator<RouteManager>().navigationKey,
    );
  }
}
