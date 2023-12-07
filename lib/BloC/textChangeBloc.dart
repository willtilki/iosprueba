import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextChangeBloc {
  String texto="";

  final _textoStreamController = StreamController<String>();

  Stream<String> get textoStreamController => _textoStreamController.stream;

  void setTexto(String txt) {
    _textoStreamController.sink.add(txt);
  }

  void dispose() {
    _textoStreamController.close();
  }

  Widget getWidget(String txt){
    if(txt.isEmpty){
      return const CircularProgressIndicator();
    }
     return Text( 'cambiado: $txt',
              style: const TextStyle(fontSize: 24));
  }
}
