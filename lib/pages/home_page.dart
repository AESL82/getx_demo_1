import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo_1/controllers/home_controller.dart';
import 'package:getx_demo_1/pages/home_page_widgets/home_label.dart';
import 'package:getx_demo_1/pages/home_page_widgets/home_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // GetBuilder exterior especificando el tipo HomeController.
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (HomeController controller) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Gestión de estados con GetX',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: const HomeList(),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                controller.increment();
              },
              child: const Icon(Icons.add),
            ),
          );
        });
  }
}
