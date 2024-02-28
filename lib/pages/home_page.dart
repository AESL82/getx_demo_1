import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo_1/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // GetBuilder exterior especificando el tipo HomeController
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (HomeController controller) {
          // Especifica explícitamente el tipo aquí
          print("build home");
          return Scaffold(
            appBar: AppBar(
              title: const Text('GetX Demo 1'),
            ),
            body: Center(
              // GetBuilder interior también debe especificar el tipo HomeController.
              child: GetBuilder<HomeController>(
                  id:
                      'text', // Parámetro para renderizar solo las partes necesarias de la pantalla.
                  builder: (HomeController controller) =>
                      Text(controller.counter.toString())),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                controller.increment();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          );
        });
  }
}
