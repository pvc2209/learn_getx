import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'models/counter.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);

  final Counter counter = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.add();
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${counter.count}",
                style: const TextStyle(fontSize: 50),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Back to home page"),
            ),
          ],
        )),
      ),
    );
  }
}
