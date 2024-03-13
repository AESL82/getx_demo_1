import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo_1/controllers/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: (_) => Scaffold(
              body: Center(
                child: Text("${_.user.firstName} ${_.user.lastName}"),
              ),
            ));
  }
}
