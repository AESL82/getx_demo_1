import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo_1/models/user.dart';
import 'package:flutter/cupertino.dart';

class ProfileController extends GetxController {
  late User _user;
  User get user => _user;
  String _inputText = '';

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;

    if (arguments is User) {
      _user = arguments;
    } else {
      print("Error: Argumentos no válidos recibidos en ProfileController.");
    }
  }

  void onInputTextChanged(String text) {
    _inputText = text;
  }

  void goToBackWithData() {
    if (_inputText.trim().isNotEmpty) {
      Get.back(result: _inputText);
    } else {
      showCupertinoModalPopup(
        context: Get.overlayContext!,
        builder: (_) => CupertinoActionSheet(
          title: const Text("ERROR",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              )),
          message: const Text("Ingrese un dato válido.",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
          cancelButton: CupertinoActionSheetAction(
            onPressed: () => Get.back(),
            child: const Text("ACEPTAR",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ),
      );
    }
  }
}
