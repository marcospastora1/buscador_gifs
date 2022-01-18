import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gifs/presentation/gif_page/controllers/gif.controller.dart';

class ImageWidget extends GetView<GifController> {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network('${controller.arguments['url']}'),
    );
  }
}
