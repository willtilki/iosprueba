import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpinerWidget extends StatelessWidget {
  const SpinerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    List<Color> colorizeColors = [
      const Color.fromARGB(255, 5, 48, 172),
      const Color.fromARGB(255, 47, 76, 163),
      const Color.fromARGB(255, 255, 255, 255),
      const Color.fromARGB(255, 5, 48, 172),
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 30.0,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
              margin: const EdgeInsets.only(
                  top: 60, left: 16, right: 16, bottom: 60),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    AnimatedTextKit(pause: const Duration(milliseconds: 50), repeatForever: true, animatedTexts: [
                      ColorizeAnimatedText("Enviando imagenes...",
                          textStyle: colorizeTextStyle, colors: colorizeColors,speed: const Duration(milliseconds: 200)),
                    ]),
                    //Text("Enviando imagenes..."),
                  
                  ],
                ),
              ))),
    );
  }
}
