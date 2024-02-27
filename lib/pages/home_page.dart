import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo_1/controllers/home_controller.dart';

/// En lugar de utilizar un StafulWidget, se utilizará gGetX para la aplicación.

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  //final HomeController _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      //init: _controller,
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('GetX Demo 1'),
        ),
        body: Center(
          child: Text(_.counter.toString()),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _.increment();
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}