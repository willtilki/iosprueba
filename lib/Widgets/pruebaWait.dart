import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PruebaWait extends StatelessWidget {
  const PruebaWait({super.key});

  @override
  Widget build(BuildContext context) {
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
                  children: const [
                    SizedBox(
                      height: 40,
                    ),
                    Text("Otro WIDGET PINTANDO"),
                  ],
                ),
              ))),
    );
  }
}
