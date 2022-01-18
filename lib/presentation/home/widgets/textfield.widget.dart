import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gifs/presentation/home/controllers/home.controller.dart';

class TextFieldWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      onSubmitted: (text) {
        controller.search.value = text;
        controller.offset.value = 19;
        controller.loadGifs();
      },
      style: const TextStyle(color: Colors.white),
      decoration: const InputDecoration(
        labelText: 'Pesquise Aqui',
        border: OutlineInputBorder(),
      ),
    );
  }
}