import 'package:dio/dio.dart';

class PostMethods {
  late final Dio dio;
  late final String team_id;
  PostMethods({required this.dio, required this.team_id});

  void createSpace({required String space_name}) async {
    late var payload = {
      "name": space_name,
      "multiple_assignees": true,
      "features": {
        "due_dates": {
          "enabled": true,
          "start_date": false,
          "remap_due_dates": true,
          "remap_closed_due_date": false,
        },
        "time_tracking": {"enabled": false},
        "tags": {"enabled": true},
        "time_estimates": {"enabled": true},
        "checklists": {"enabled": true},
        "custom_fields": {"enabled": true},
        "remap_dependencies": {"enabled": true},
        "dependency_warning": {"enabled": true},
        "portfolios": {"enabled": true}
      }
    };
    try {
      final response = await dio.post('/team/${team_id}/space', data: payload);
      print(response.data);
    } catch (e) {
      print('Erro: $e');
    }
  }

  void createTask({required String task_name, required String list_id, String? description}) async {
    late var payload = {"name": task_name, "description": description};
    try {
      final response = await dio.post('/list/${list_id}/task', data: payload);
      print(response.data);
    } catch (e) {
      print('Erro: $e');
    }
  }

  void createList({required String list_name, required String folder_id, String? content}) async {
    late var payload = {"name": list_name, "content": content};
    try {
      final response = await dio.post('/folder/${folder_id}/list', data: payload);
      print(response.data);
    } catch (e) {
      print('Erro: $e');
    }
  }

  void createFolder({required String folder_name, required String space_id}) async {
    late var payload = {"name": folder_name};
    try {
      final response = await dio.post('/space/${space_id}/folder', data: payload);
      print(response.data);
    } catch (e) {
      print('Erro: $e');
    }
  }

  void createTaskComment({
    required String task_id,
    required String comment,
    required int assignee,
    required bool notify_all,
  }) async {
    late var payload = {"comment_text": comment, "assignee": assignee, "notify_all": notify_all};
    try {
      final response = await dio.post('/task/${task_id}/comment', data: payload);
      print(response.data);
    } catch (e) {
      print('Erro: $e');
    }
  }
}
