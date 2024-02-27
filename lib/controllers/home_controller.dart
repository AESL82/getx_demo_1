import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  @override
  void onReady() {
    super.onReady();
  }

  int _counter = 0;
  int get counter => _counter;

  void increment() {
    _counter++;
    update();
  }
}
