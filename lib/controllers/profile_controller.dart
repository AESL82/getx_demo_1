import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo_1/models/user.dart';

class ProfileController extends GetxController {
  late User _user;
  User get user => _user;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;

    if (arguments is User) {
      _user = arguments;
    } else {
      print("Error: Argumentos no válidos recibidos en ProfileController");
    }
  }
}
