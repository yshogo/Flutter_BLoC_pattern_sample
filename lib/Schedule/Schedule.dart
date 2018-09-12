import 'package:flutter/material.dart';


class ScheduleStateless extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Schedule();
  }
}

class Schedule extends StatefulWidget {

  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("スケジュール"),
      ),
      body: Center(
        child: Text("テスト"),
      ),
    );
  }
}