import 'package:ag_crm_myadmin/views/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void main() {
    runApp(MyApp());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ag CRM MyAdmin',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
