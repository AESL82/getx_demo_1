import 'package:dio/dio.dart';
import 'package:getx_demo_1/models/user.dart';

// Haciendo uso de https://reqres.in/.
class UsersAPI {
  UsersAPI._internal();
  static final UsersAPI _instance = UsersAPI._internal();
  static UsersAPI get instance => _instance;

  final _dio = Dio();

  Future<List<User>> getUsers(int page) async {
    try {
      final Response response = await _dio.get(
        'https://reqres.in/api/users',
        queryParameters: {
          "page": page,
          "delay": 3,
        },
      );

      return (response.data['data'] as List)
          .map((e) => User.fromJson(e))
          .toList();
    } catch (e) {
      //print(e);
      throw Exception('Failed to get users');
    }
  }
}
