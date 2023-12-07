import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/BloC/counterBloc.dart';
import 'package:my_app/BloC/progresoImgsBloc.dart';
import 'package:my_app/BloC/textChangeBloc.dart';

class ContadorWidget extends StatelessWidget {
  final _counterBloc = CounterBloc();
  final _text = TextChangeBloc();
  final textoControl = TextEditingController();
  final progresoBloc = ProgresoImgsBloc();

  ContadorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      body: Column(children: [
        TextField(
          controller: textoControl,
          onChanged: (value) {
            _text.setTexto(value);
          },
          maxLength: 10,
        ),
        Center(
          child: StreamBuilder<int>(
            stream: _counterBloc.counterStream,
            builder: (context, snapshot) {
              return Text(
                'Contador: ${snapshot.data ?? 0}',
                style: const TextStyle(fontSize: 24),
              );
            },
          ),
        ),
        StreamBuilder<String>(
          stream: _text.textoStreamController,
          builder: (context, snapshot) {
            return _text.getWidget(textoControl.text);
          },
        ),
        TextButton(
            onPressed: () {
              progresoBloc.getWidget(false);
              progresoBloc.getWidget(true);
            },
            child: Text("Lanzar")),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counterBloc.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void dispose() {
    _counterBloc.dispose();
    _text.dispose();
  }
}
