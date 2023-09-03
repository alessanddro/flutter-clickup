import 'package:get/get.dart';

import 'package:clickup_app/api/clickup/clickupApi.dart';
import 'package:clickup_app/model/user_model.dart';

class UserController extends GetxController {
  late User userData = User.empty();
  ClickupApi clickupApi = ClickupApi();

  @override
  void onInit() {
    getUserData();
    super.onInit();
  }

  void getUserData() async {
    userData = await clickupApi.get().user();
    update();
  }
}
