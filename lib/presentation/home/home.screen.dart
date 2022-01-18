import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gifs/presentation/home/widgets/erro.widget.dart';
import 'package:gifs/presentation/home/widgets/grid_view.widget.dart';
import 'package:gifs/presentation/home/widgets/load.widget.dart';
import 'package:gifs/presentation/home/widgets/textfield.widget.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Image.network(
            'https://developers.giphy.com/static/img/dev-logo-lg.gif'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFieldWidget(),
          ),
          Flexible(
            child: Obx(
              () {
                if (controller.load.value) {
                  return LoadWidget();
                } else if(controller.statusError.value){
                  return const ErroWidget();
                }else{
                  return const GridViewWidget();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
