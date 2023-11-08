import 'package:flutter/material.dart';
import 'package:sampleproject/FirstScreen.dart';
//import 'package:qr_flutter/qr_flutter.dart';

// ignore: camel_case_types
class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FirstScreen(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Image.asset(
              'assets/img/123.png',
              fit: BoxFit.cover,
              width: 410,
              height: MediaQuery.of(context).size.height * 0.7,
            ),
            Expanded(
              child: Container(
                color: Color(0xff201b51),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/img/LankaQR.png',
                      width: 90,
                      height: 90,
                    ),
                    Text(
                      'Qr Code Validator',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'From',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'DirectPay',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Dev Note - This above elements should be scaled\n according to the screen size',
                      style: TextStyle(color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
