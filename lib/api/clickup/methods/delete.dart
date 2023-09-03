import 'package:dio/dio.dart';

class DeleteMethods {
  late final Dio dio;
  late final String team_id;

  DeleteMethods({required this.dio, required this.team_id});

  void commentTask({required int comment_id}) async {
    try {
      final response = await dio.delete('/comment/${comment_id}');
      print(response.data);
    } catch (e) {
      print('Erro: $e');
    }
  }

  void task({required String task_id}) async {
    try {
      final response = await dio.delete('/task/${task_id}');
      print(response.data);
    } catch (e) {
      print('Erro: $e');
    }
  }
}
