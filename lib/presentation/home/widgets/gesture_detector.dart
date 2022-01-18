import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gifs/presentation/home/controllers/home.controller.dart';
import 'package:share/share.dart';

class GestureDetectorWidget extends GetView<HomeController> {
  const GestureDetectorWidget({required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed('/gifpage',
          arguments: {'url': controller.gifs[index].url}),
      onLongPress: () => Share.share(controller.gifs[index].url),
      child: Image.network(
        controller.gifs[index].url,
        height: 300,
        fit: BoxFit.cover,
      ),
    );
  }
}
