import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  int _counter = 0;
  int get counter => _counter;

  @override
  void onInit() {
    super.onInit();
    print("Same as initState");
  }

  @override
  void onReady() {
    super.onReady();
    print("HomeController onReady");
  }

  void increment() {
    _counter++;
    update(['text']);
  }
}
