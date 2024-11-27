import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/success_screen.dart';
import 'screens/description_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login App',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/success': (context) => SuccessScreen(),
        '/description': (context) => DescriptionScreen(),
      },
    );
  }
}
