import 'package:get/state_manager.dart';
import 'package:getx_demo_1/api/users_api.dart';
import 'package:getx_demo_1/models/user.dart';

class HomeController extends GetxController {
  int _counter = 0;
  List<User> _users = [];
  bool _loading = true;
  bool get loading => _loading;
  int get counter => _counter;
  List<User> get users => _users;

  @override
  void onInit() {
    super.onInit();
    print("Same as initState");
  }

  @override
  void onReady() {
    super.onReady();
    print("onReady");
    loadUsers();
  }

  Future<void> loadUsers() async {
    final data = await UsersAPI.instance.getUsers(1);
    _users = data;
    _loading = false;
    update(['users']);
  }

  void increment() {
    _counter++;
    update(['text']);
  }
}
