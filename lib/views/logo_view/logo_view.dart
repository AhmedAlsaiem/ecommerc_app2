import 'package:ecommerc_app2/views/spelsh_screen.dart/splesh__view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreenLogo extends StatefulWidget {
  const SplashScreenLogo({super.key});

  @override
  State<SplashScreenLogo> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenLogo>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersive,
    );
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const SpleshVeiw();
      }));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Container(
        padding: const EdgeInsets.all(20),
        width: 300,
        height: 300,
        decoration: const BoxDecoration(

            //   color: Colors.deepOrange,
            //  borderRadius: BorderRadius.circular(50),

            ),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/mmlogo.avif',
              fit: BoxFit.cover,
              //  color: Colors.deepOrange,
            ),
            const Positioned(
              bottom: 0,
              top: 210,
              left: 75,
              child: Text(
                'SwiftShop',
                style: TextStyle(
                  //    fontFamily: 'assets/fonts/muli/Agbalumo-Regular.ttf',
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.deepOrange,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
