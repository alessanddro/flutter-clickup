import 'package:get/get.dart';

import 'package:clickup_app/api/clickup/clickupApi.dart';
import 'package:clickup_app/model/spaces_model.dart';

class ClickupController extends GetxController {
  ClickupApi clickupApi = ClickupApi();
  Spaces spacesData = Spaces();
  @override
  void onInit() {
    getClickupData();
    super.onInit();
  }

  void getClickupData() async {
    spacesData = await clickupApi.get().spaces();
    update();
  }
}
