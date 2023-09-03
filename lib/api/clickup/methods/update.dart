import 'package:dio/dio.dart';

class UpdateMethods {
  late final Dio dio;
  late final String team_id;
  UpdateMethods({required this.dio, required this.team_id});

  void commentTask({
    required int comment_id,
    required String comment,
    required int assignee,
    required bool resolved,
  }) async {
    late var payload = {"comment_text": comment, "assignee": assignee, "resolved": resolved};
    try {
      final response = await dio.put('/comment/${comment_id}', data: payload);
      print(response.data);
    } catch (e) {
      print('Erro: $e');
    }
  }

  void task({
    required String task_id,
    String? task_name,
    String? description,
  }) async {
    late var payload = {"name": task_name, "description": description};
    try {
      final response = await dio.put('/task/${task_id}', data: payload);
      print(response.data);
    } catch (e) {
      print('Erro: $e');
    }
  }
}
