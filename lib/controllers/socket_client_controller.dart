import 'dart:async';
import 'package:get/state_manager.dart';
import 'package:faker/faker.dart';

class SocketClientController extends GetxController {
  final RxString _message = "".obs;
  RxString get message => _message;
  final RxString _searchText = "".obs;
  late Timer _timer;
  final _faker = Faker();

  @override
  void onInit() {
    super.onInit();
    _init();
  }

  _init() {
    /*
    debounce(
      _searchText,
      (_) {
        print(_searchText.value);
      },
      time: const Duration(milliseconds: 500),
    );
    */
    interval(
      _searchText,
      (_) {
        print(_searchText.value);
      },
      time: const Duration(milliseconds: 500),
    );
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      _message.value = _faker.lorem.sentence();
    });
  }

  @override
  void onClose() {
    _timer.cancel();
    super.onClose();
  }

  void setSearchText(String text) {
    _searchText.value = text;
  }
}
