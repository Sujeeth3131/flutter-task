import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {

  var count = 0.obs;


  void increment() {
    count++;
  }
}
class CounterPage extends StatelessWidget {

  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
              'Counter: ${counterController.count}',
              style: TextStyle(fontSize: 30),
            )),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                counterController.increment();
              },
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
