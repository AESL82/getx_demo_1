import 'package:flutter/material.dart';
import 'package:getx_demo_1/controllers/home_controller.dart';
import 'package:get/state_manager.dart';

class Homelabel extends StatelessWidget {
  const Homelabel({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        id:
            'text', // Parámetro para renderizar solo las partes necesarias de la pantalla.
        builder: (HomeController controller) =>
            Text(controller.counter.toString()));
  }
}
