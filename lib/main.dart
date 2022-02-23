// https://youtu.be/U-NwBfgpX8k
// Xịn sò con bò :)

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  var count = 0.obs;

  @override
  Widget build(BuildContext context) {
    print("rebuild to");

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Getx Simple"),
          centerTitle: true,
        ),
        body: Center(
          child: Obx(
            () {
              print("rebuild obx");
              return Text(
                "$count",
                style: TextStyle(fontSize: 50),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            count++;
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
