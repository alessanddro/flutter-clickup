import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:clickup_app/api/clickup/clickupApi.dart';
import 'package:clickup_app/controllers/user_controller.dart';
import 'package:clickup_app/model/spaces_model.dart';
import 'package:clickup_app/widgets/circular_image_avatar.dart';

import '../../controllers/clickup_controller.dart';
import '../../widgets/space_card.dart';

var clickupApi = ClickupApi();
final UserController userController = Get.find();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: GetBuilder<UserController>(
          init: UserController(),
          builder: (value) => Text(value.userData.username),
        ),
        actions: [
          GetBuilder<UserController>(
            builder: (value) => Container(
              padding: const EdgeInsets.all(8),
              child: CircularImageWithBorder(
                userImage: value.userData.profilePicture,
              ),
            ),
          ),
        ],
      ),
      body: GetBuilder<ClickupController>(
        init: ClickupController(),
        builder: (value) => ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: value.spacesData.spaces?.length,
          itemBuilder: (BuildContext context, int i) {
            Space space = value.spacesData.spaces![i];
            return SpaceCard(
              space: space,
            );
          },
        ),
      ),
    );
  }
}
