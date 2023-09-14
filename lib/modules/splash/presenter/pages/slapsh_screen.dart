import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  Future<void> _navigateToNextScreen() async {
    await Future.delayed(Duration(seconds: 3));

    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            Colors.white.withOpacity(
                0.5), // Ajuste o valor de opacidade conforme necessário
            BlendMode.srcATop,
          ),
          child: Image.asset(
            'assets/splash.png',
            height: 130,
          ),
        ),
      ),
    );
  }
}
