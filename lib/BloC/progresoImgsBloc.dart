import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/Widgets/pruebaWait.dart';
import 'package:my_app/Widgets/spinerWidget.dart';

class ProgresoImgsBloc {
  bool flag = true;

  final _optionController = StreamController<bool>();

  Stream<bool> get optionStream => _optionController.stream;

  void setFlag(bool value) {
    _optionController.sink.add(value);
  }

  void dispose() {
    _optionController.close();
  }

  void getWidget(bool flag) {
    if (flag) {
       Get.to(() => const SpinerWidget());
    } else {
      Get.to(() => const PruebaWait());
    }

    //SpinnerRecOficial(imageAssets: 'assets/images/logo_azul.png'),
  }
}
