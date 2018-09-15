import 'dart:async';

import 'package:bloc_sample_app/BlocProvider.dart';
import 'package:bloc_sample_app/minimum/IncrementBloc.dart';
import 'package:flutter/material.dart';


class MinimumStateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<IncrementBloc>(
      bloc: IncrementBloc(),
      child: Minimum(),
    );
  }
}

class Minimum extends StatefulWidget {
  @override
  _MinimumState createState() => new _MinimumState();
}

class _MinimumState extends State<Minimum> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    final IncrementBloc bloc = BlocProvider.of<IncrementBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("最小のBLoC"),
      ),
      body: Center(
        child: StreamBuilder<String>(
            stream: bloc.outCounter,
            initialData: counter.toString(),
            builder: (context, snapshot) {
              return Text("${snapshot.data}");
            }),
      ),
      floatingActionButton:
          FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                bloc.incrementCounter.add(counter);
              }),
    );
  }
}
