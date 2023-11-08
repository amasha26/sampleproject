import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sampleproject/Secondscreen.dart';
//import 'package:qr_flutter/qr_flutter.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: Container(
      // alignment: Alignment.topLeft,
      //children: <Widget>[
      //color: Colors.white,

      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/img/bluecover.png',
                alignment: Alignment.topCenter,
                height: 360,
                //height: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
              ),

              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/img/LankaQR.png',
                      alignment: Alignment.topCenter,
                      height: 120,
                      //height: MediaQuery.of(context).size.width,
                      width: MediaQuery.of(context).size.width,
                    ),
                    const Text(
                      'Qr Code Validator',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      'Use this application to validate any LankaQR codes \neasily.fast.and axccuratly',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    const Text(
                      'Dev Note - This above elements should be scaled\n according to the screen size',
                      style: TextStyle(color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )

              // Image.asset(
              //   'assets/img/poweroff.png',
              //   scale: 5.8,
              // ),

              //Image.asset('assets/img/SD1'),
            ],
          ),

          //Padding(
          // padding: const EdgeInsets.all(16.0),
          //child: Row(
          //children: [
          //FloatingActionButton: Image.asset('assets/img/power-off.png')(onPressed: onPressed)

          // Image.asset('assets/img/poweroff.png',
          //   width: 35, height: 35),
          //  ],
          // ),
          //  ),

          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(0.0),
              ),
              Container(
                width: 220,
                height: 75,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                      ),
                    ],
                    borderRadius: BorderRadiusDirectional.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(children: [
                    Image.asset(
                      'assets/img/qrlogo.png',
                      width: 50,
                    ),
                    const Text(
                      "SCAN QR CODE",
                      //style: TextStyle(f),
                    ),
                  ]),
                ),
              )
              // OutlinedButton(
              //     style: OutlinedButton.styleFrom(
              //       minimumSize: Size(200, 60),
              //     ),
              //     onPressed: () {},
              //     child: Column(
              //       children: [
              //         Image.asset(
              //           'assets/img/qrlogo.png',
              //           width: 55,
              //           height: 45,
              //           //color: Colors.white,
              //         ),
              //         Text('SCAN QR CODE')
              //       ],
              //     )),
            ],
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(4.0),
              ),
              Text(
                'Scan QR code from Gallery.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(197, 23, 43, 83),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0.0),
              ),
              Text(
                'Once upload the QR to the App,you will be\n redirected to the result screen',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              )
            ],
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 240,
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(13.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 60, 61, 62),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Choose QR Code',
                    textAlign: TextAlign.center,
                  ),
                ),
                //Spacer(),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        //minimumSize: Size(80, 45),
                        ),
                    onPressed: () {},
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/img/upload.png',
                          width: 30,
                          height: 35,
                          //color: Colors.white,
                        ),
                      ],
                    ))
              ],
            ),
          ),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(7.0),
              ),
              Text(
                'Dev note - 1.choose file from dashed line button and\n upload with upload icon button',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(3.0),
              ),
              Text(
                'This application developed by DirectPay for developers,\nmerchants and community. Version 1.0',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),

      //height: MediaQuery.of(context).size.height * 0.2),
      //  ),
      floatingActionButton: TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Secondscreen()));
        },
        child: const Text("Next"),
      ),
    );
  }
}
