import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gifs/presentation/gif_page/controllers/gif.controller.dart';
import 'package:gifs/presentation/gif_page/widgets/icon_button.widget.dart';
import 'package:gifs/presentation/gif_page/widgets/image.widget.dart';

class GifPage extends GetView<GifController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('GIF muito legal'),
        backgroundColor: Colors.black,
        actions: const [
          IconButtonWidget(),
        ],
      ),
      body: const ImageWidget(),
    );
  }
}
