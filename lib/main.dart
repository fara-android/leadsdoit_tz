import 'package:flutter/material.dart';
import 'package:leadsdoit_tz/app/presentation/screens/splash/splash_screen.dart';
import 'service_locator.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Leadsdoit App',
      home: SplashScreen(),
    );
  }
}
