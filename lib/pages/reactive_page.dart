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
          return Scaffold(
              body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Center(
                    child: Text(
                      'Age: ${_.myPet.age}',
                      style: const TextStyle(fontSize: 30),
                    ),
                  )),
              MaterialButton(
                onPressed: () {
                  _.setPetAge(_.myPet.age + 1);
                },
                color: Colors.black,
                child: const Text('Set age',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ],
          )
              // Con Maps.
              /*
            body: Obx(() => ListView(
                  children: _.mapItems.values
                      .map(
                        (e) => ListTile(
                          title: Text(e),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () => _.removeMapItem(e),
                          ),
                        ),
                      )
                      .toList(),
                )),
            */
              // Con ListView.
              /*
            body: Obx(
              () => ListView.builder(
                itemBuilder: (__, index) {
                  final String text = _.items[index];
                  return ListTile(
                    title: Text(text),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        _.removeItem(index);
                      },
                    ),
                  );
                },
                itemCount: _.items.length,
              ),
            ),
            */
              /*
            Center(
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
            */
              // FloatingActionButton para elementos de listas, mapas e incrementales.
              /*
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  heroTag: 'add',
                  child: const Icon(Icons.add),
                  onPressed: () {
                    //_.increment();
                    // Con ListView.
                    //_.addItem();
                    // Con Maps.
                    _.addMapItem();
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
            */
              );
        });
  }
}
