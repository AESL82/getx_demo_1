import 'dart:async';
import 'package:get/state_manager.dart';
import 'package:faker/faker.dart';

class SocketClientController extends GetxController {
  final RxString _message = "".obs;
  RxString get message => _message;
  late Timer _timer;
  final _faker = Faker();

  @override
  void onInit() {
    super.onInit();
    _init();
  }

  _init() {
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      _message.value = _faker.lorem.sentence();
    });
  }

  @override
  void onClose() {
    _timer.cancel();
    super.onClose();
  }
}
