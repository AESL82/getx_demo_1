import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo_1/controllers/global_controller.dart';
import 'package:getx_demo_1/controllers/home_controller.dart';
import 'package:getx_demo_1/pages/home_page_widgets/home_label.dart';
import 'package:getx_demo_1/pages/home_page_widgets/home_list.dart';
import 'package:getx_demo_1/widgets/product_list.dart';

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
                'Lista de Productos',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                GetBuilder<GlobalController>(
                  id: 'favorites',
                  builder: (_) => MaterialButton(
                    child: Text("Favoritos (${_.favorites.length})"),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            // Lista de usuarios recogidos de la API de pruebas.
            //body: const HomeList(),
            // Lista de productos.
            body: const ProductList(key: Key('product_list')),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                controller.increment();
              },
              //child: const Icon(Icons.add),
              child: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {},
                color: Colors.black,
              ),
            ),
          );
        });
  }
}
