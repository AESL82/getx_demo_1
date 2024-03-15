import 'dart:async';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class ReactiveController extends GetxController {
// Elementos relacionados a la parte 1 de la programación reactiva.

  RxInt counter = 0.obs; // Obs es para que sea observable.
  RxString currentDate = ''.obs; // Obs es para que sea observable.

  // Elementos relacionados a la parte 2 de la programación reactiva.

  RxList<String> items = RxList<String>();
  RxMap<String, dynamic> mapItems = <String, dynamic>{}.obs;

  @override
  void onInit() {
    super.onInit();
    print("🎃 reactive onInit");
  }

  void increment() {
    counter.value++;
  }

  void getDate() {
    currentDate.value = DateTime.now().toString();
  }

  void addItem() {
    items.add(DateTime.now().toString());
  }

  void addMapItem() {
    final String key = DateTime.now().toString();
    mapItems[key] = key;
  }

  void removeItem(int index) {
    items.removeAt(index);
  }

  void removeMapItem(String key) {
    mapItems.remove(key);
  }
}
