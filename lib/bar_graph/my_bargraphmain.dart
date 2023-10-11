import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_app/bar_graph/my_bargraph.dart';

class BarGraph extends StatelessWidget {

List<double> data =[22,12,3,12,4,14,16,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: 350,
            child: MyBarGraph(data: data),
          ),
        ),
      ),
    );
  }
}
