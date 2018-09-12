

import 'dart:async';
import 'package:bloc_sample_app/BlocProvider.dart';
import 'package:bloc_sample_app/Schedule/ApiClient.dart';
import 'package:bloc_sample_app/Schedule/ScheduleModel.dart';

class ApiBloc implements BlocBase {

  StreamController<List<ScheduleModel>> _scheduleController = StreamController<List<ScheduleModel>>();
  StreamSink<List<ScheduleModel>> get items => _scheduleController.sink;
  Stream<List<ScheduleModel>> get outStream => _scheduleController.stream;

  ApiBloc() {

    _getItems();
  }

  @override
  void dispose() {
    _scheduleController.close();
  }

  void _getItems() async {
    final itemList = await ScheduleClient().getItems();
    _scheduleController.sink.add(itemList);
  }
}