import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gifs/presentation/gif_page/controllers/gif.controller.dart';
import 'package:share/share.dart';

class IconButtonWidget extends GetView<GifController> {
  const IconButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Share.share(controller.arguments['url']),
      icon: const Icon(Icons.share),
    );
  }
}
