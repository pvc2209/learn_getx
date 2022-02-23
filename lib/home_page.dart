import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/models/counter.dart';
import 'package:learn_getx/second_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final counter = Get.put(Counter());

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
        title: const Text("Home Page"),
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
                Get.to(() => SecondPage());
              },
              child: const Text("Go to second page"),
            ),
          ],
        ),
      )),
    );
  }
}
