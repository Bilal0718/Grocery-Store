import 'package:flutter/material.dart';
import 'package:grocery_store/common/color_extension.dart';
import 'package:grocery_store/view/login/welcome_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fireOpenApp();
  }

  void fireOpenApp() async {
    await Future.delayed(const Duration(seconds: 3));
    startApp();
  }

  void startApp() {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const WelcomeView()), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.primary,
      body: 
          Center(
            child: Image.asset(
              "assets/img/splash_logo.png",
              width: media.width * 0.7,
            ),
          )
    );
  }
}
