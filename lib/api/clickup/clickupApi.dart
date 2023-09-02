import 'package:dio/dio.dart';

import 'package:clickup_app/api/clickup/methods/delete.dart';
import 'package:clickup_app/api/clickup/methods/update.dart';

import 'methods/get.dart';
import 'methods/post.dart';

const uri = "https://api.clickup.com/api/v2";
const String team_id = '9014015558';

BaseOptions options = BaseOptions(
  baseUrl: uri,
  headers: {
    'Authorization': 'pk_44358912_B94UAJBFT9B2ZKJPSVEOVJ53V2VKAUP2',
  },
  responseType: ResponseType.plain,
  connectTimeout: const Duration(milliseconds: 30000),
  receiveTimeout: const Duration(milliseconds: 30000),
);
Dio dio = Dio(options);

class ClickupApi {
  GetMethods get() {
    return GetMethods(dio: dio, team_id: team_id);
  }

  PostMethods post() {
    return PostMethods(dio: dio, team_id: team_id);
  }

  UpdateMethods update() {
    return UpdateMethods(dio: dio, team_id: team_id);
  }

  DeleteMethods delete() {
    return DeleteMethods(dio: dio, team_id: team_id);
  }
}
