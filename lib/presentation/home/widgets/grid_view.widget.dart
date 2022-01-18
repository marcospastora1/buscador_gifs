import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gifs/presentation/home/controllers/home.controller.dart';
import 'package:gifs/presentation/home/widgets/gesture_detector.dart';

import 'gesture_detector_search.widget.dart';

class GridViewWidget extends GetView<HomeController> {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(left: 10, right: 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: controller.gifs.length,
      itemBuilder: (context, index) {
        if (controller.search.value == '' || index < controller.gifs.length) {
          return GestureDetectorWidget(index: index);
        } else {
          return GestureDetectorSearchWidget();
        }
      },
    );
  }
}
