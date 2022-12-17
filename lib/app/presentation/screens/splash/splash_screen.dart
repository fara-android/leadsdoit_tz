import 'dart:io';
import 'package:flutter/material.dart';
import 'package:leadsdoit_tz/app/presentation/screens/events/events_screen.dart';
import 'package:lottie/lottie.dart';

import '../../widgets/web_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _checkRedirectUrl();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          height: 103,
          width: 103,
          child: Lottie.asset(
            'assets/animations/ball.json',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Future<void> _checkRedirectUrl() async {
    final redirectUrl = await _getUrlLocation(
      'https://kueski.shop/cq1al3k.php?key=9ckcsrbnkseenkjkuh04',
    );
    await Future.delayed(const Duration(seconds: 1), () {});
    _startApp(redirectUrl);
  }

  void _startApp(String url) {
    if (url.contains('thesportsdb')) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: WebViewPage(
              url: url,
            ),
          ),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const EventsScreen(),
        ),
      );
    }
  }

  Future<String> _getUrlLocation(String url) async {
    final client = HttpClient();
    var uri = Uri.parse(url);
    var request = await client.getUrl(uri);
    request.followRedirects = false;
    var response = await request.close();
    return response.headers.value(HttpHeaders.locationHeader) ?? '';
  }
}
