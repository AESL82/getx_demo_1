import 'dart:async';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class ReactiveController extends GetxController {
  RxInt counter = 0.obs;
  RxString currentDate = ''.obs;

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
}
