import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo_1/controllers/reactive_controller.dart';

class ReactivePage extends StatelessWidget {
  const ReactivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReactiveController>(
        init: ReactiveController(),
        builder: (_) {
          //print("reactive");
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() {
                    return Text(
                      textAlign: TextAlign.center,
                      'Contador: ${_.counter.value}',
                      style: const TextStyle(fontSize: 30),
                    );
                  }),
                  const SizedBox(height: 10),
                  Obx(() {
                    return Text(
                      'Date: ${_.currentDate.value}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 30),
                    );
                  }),
                ],
              ),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  heroTag: 'add',
                  child: const Icon(Icons.add),
                  onPressed: () {
                    _.increment();
                  },
                ),
                const SizedBox(width: 20),
                FloatingActionButton(
                  heroTag: 'date',
                  child: const Icon(Icons.calendar_today),
                  onPressed: () {
                    _.getDate();
                  },
                )
              ],
            ),
          );
        });
  }
}
