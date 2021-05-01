import 'package:flutter/material.dart';
import 'package:plantwateringapp/screens/HomeScreen.dart';
import 'package:plantwateringapp/services/routing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: homeScreenRoute,
      routes: {
        homeScreenRoute: (_) => HomeScreen(),
      },
    );
  }
}

