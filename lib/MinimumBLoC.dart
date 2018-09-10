import 'dart:async';

import 'package:flutter/material.dart';

class MinimumBLoC extends StatefulWidget {
  @override
  _MinimumBLoCState createState() => new _MinimumBLoCState();
}

class _MinimumBLoCState extends State<MinimumBLoC> {
  int counter = 0;
  final StreamController<int> _streamController = StreamController<int>();

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("最小のBLoC"),
      ),
      body: Center(
        child: StreamBuilder<int>(
            stream: _streamController.stream,
            initialData: counter,
            builder: (context, snapshot) {
              return Text("${snapshot.data}");
            }),
      ),
      floatingActionButton:
          FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                _streamController.add(++counter);
              }),
    );
  }
}
