import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gifs/presentation/home/controllers/home.controller.dart';

class GestureDetectorSearchWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.offset.value += 19,
      child: Center(
        child: Column(
          children: const [
            Icon(
              Icons.add,
              color: Colors.white,
              size: 70,
            ),
            Text(
              'Carregar mais...',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
