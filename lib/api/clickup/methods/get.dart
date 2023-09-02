import 'package:dio/dio.dart';

class GetMethods {
  late final Dio dio;
  late final String team_id;

  GetMethods({required this.dio, required this.team_id});

  void spaces() async {
    try {
      final response = await dio.get('/team/${team_id}/space');
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
}
