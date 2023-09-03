import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tinycolor2/tinycolor2.dart';

import 'package:clickup_app/api/clickup/clickupApi.dart';

import '../model/spaces_model.dart';

class SpaceCard extends StatelessWidget {
  const SpaceCard({super.key, required this.space});
  final Space space;
  @override
  Widget build(BuildContext context) {
    TinyColor tc = space.color == null ? TinyColor.fromColor(Colors.white54) : TinyColor.fromColor(Colors.deepPurple);

    return Material(
      child: GestureDetector(
        onTap: () async {
          ClickupApi clickupApi = ClickupApi();
          Space spaceData = await clickupApi.get().space(space_id: space.id.toString());
          print(spaceData.name.toString());
        },
        child: Card(
          elevation: 8,
          color: tc.color,
          child: Container(
            padding: const EdgeInsets.all(12),
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  space.name.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: tc.color != Colors.white54 ? Colors.white : Colors.black,
                  ),
                ),
                Icon(
                  Icons.folder_open_rounded,
                  color: tc.color != Colors.white54 ? Colors.white : Colors.black,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
