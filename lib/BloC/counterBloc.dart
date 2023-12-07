import 'dart:async';

class CounterBloc {
//varible que controla el bloc
  int conter = 0;

//final = statico
  final _conterStreamController = StreamController<int>();

//get del stream
  Stream<int> get counterStream => _conterStreamController.stream;

//metodo para incrementar la variable mediante el bloc
  void increment() {
    conter++;
    //se encarga de emitir el nuevo valor del contador a través del Stream. (actualiza) que es un objeto de tipo StreamSink. El StreamSink se usa para agregar elementos al Stream.
    _conterStreamController.sink.add(conter);
  }

  void dispose(){
    _conterStreamController.close();
  }
}
