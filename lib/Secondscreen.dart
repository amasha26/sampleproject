import 'package:flutter/material.dart';

class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/img/LankaQRBanner.png'),
            Expanded(
              flex: 2,
              child: Container(color: Colors.red),
            ),
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Dev Note - This button work as turn on flash. camera opens\nAutomatically',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 230, 213, 211),
                    ),
                  ),
                ),

                // child: Text(
                //   'Dev Note - This button work as turn on flash. camera opens\nAutomatically',
                //   textAlign: TextAlign.center,
                //   style: TextStyle(
                //     fontSize: 12,
                //     fontWeight: FontWeight.w500,
                //     color: Colors.red,
                //   ),
                // ),

                //color: Color.fromARGB(255, 250, 249, 248),
              ),
            )
          ],
        ),
      ),
    );
  }
}
