import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../model/spaces_model.dart';
import '../../../model/user_model.dart';

class GetMethods {
  late final Dio dio;
  late final String team_id;

  GetMethods({required this.dio, required this.team_id});

  Future<User> user() async {
    try {
      Response response = await dio.get('/user');
      Map<String, dynamic> data = jsonDecode(response.data);
      User user = User.fromJson(data);
      return user;
    } catch (e) {
      throw Exception('Erro na solicitação HTTP: $e');
    }
  }

  Future<Spaces> spaces() async {
    try {
      final response = await dio.get('/team/${team_id}/space');
      Map<String, dynamic> data = jsonDecode(response.data);
      Spaces spaces = Spaces.fromJson(data);
      return spaces;
    } catch (e) {
      throw Exception('Erro na solicitação HTTP: $e');
    }
  }

  Future<Space> space({required String space_id}) async {
    try {
      final response = await dio.get('/space/${space_id}');
      Map<String, dynamic> data = jsonDecode(response.data);
      Space space = Space.fromJson(data);
      return space;
    } catch (e) {
      throw Exception('Erro na solicitação HTTP: $e');
    }
  }

  void folder({required String folder_id}) async {
    try {
      final response = await dio.get('/folder/${folder_id}');
      print(response.data);
    } catch (e) {
      print('Erro: $e');
    }
  }

  void folders({required String space_id}) async {
    try {
      final response = await dio.get('/space/${space_id}/folder');
      print(response.data);
    } catch (e) {
      print('Erro: $e');
    }
  }

  void lists({required String folder_id}) async {
    try {
      final response = await dio.get('/folder/${folder_id}/list');
      print(response.data);
    } catch (e) {
      print('Erro: $e');
    }
  }

  void tasks({required String list_id}) async {
    try {
      final response = await dio.get('/list/${list_id}/task');
      print(response.data);
    } catch (e) {
      print('Erro: $e');
    }
  }

  void task({required String task_id}) async {
    try {
      final response = await dio.get('/task/${task_id}');
      print(response.data);
    } catch (e) {
      print('Erro: $e');
    }
  }

  void taskComments({required String task_id}) async {
    try {
      final response = await dio.get('/task/${task_id}/comment');
      print(response.data);
    } catch (e) {
      print('Erro: $e');
    }
  }
}
