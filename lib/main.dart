import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/screen/first_screen.dart';
import 'package:test_app/screen/second_screen.dart';
import 'package:test_app/screen/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return CupertinoPageRoute(
                builder: (_) => const HomeScreen(), settings: settings);
          case '/second':
            return CupertinoPageRoute(
                builder: (_) => const SecondScreen(), settings: settings);
          case '/third':
            return CupertinoPageRoute(
                builder: (_) => const ThirdScreen(), settings: settings);
        }
        return null;
      },
    );
  }
}
