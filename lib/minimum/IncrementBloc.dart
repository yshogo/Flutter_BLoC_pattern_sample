

import 'dart:async';

import 'package:bloc_sample_app/BlocProvider.dart';

class IncrementBloc implements BlocBase {

  int _counter;

  // handle controller
  StreamController<int> _counterController = StreamController<int>();
  StreamSink<int> get _inAdd => _counterController.sink;
  Stream<int> get outCounter => _counterController.stream;

  // handle view action
  StreamController<int> _actionController = StreamController<int>();
  StreamSink<int> get incrementCounter => _actionController.sink;

  IncrementBloc() {
    _counter = 0;
    _actionController.stream.listen(_handleLogic);
  }

  void _handleLogic(data) {
    _counter += 1;
    _inAdd.add(_counter);
  }

  @override
  void dispose() {
    _counterController.close();
    _actionController.close();
  }
}