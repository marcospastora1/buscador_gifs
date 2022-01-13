import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gifs/controller.dart';
import 'package:gifs/gif_page.dart';
import 'package:share/share.dart';
import 'package:transparent_image/transparent_image.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.network(
            'https://developers.giphy.com/static/img/dev-logo-lg.gif'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              textAlign: TextAlign.center,
              onSubmitted: (text) {
                controller.search.value = text;
                controller.offset.value = 19;
              },
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Pesquise Aqui',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Flexible(
            child: Obx(() {
              if (controller.load.value) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                );
              } else if (controller.statusError.value) {
                return const Center(
                  child: Center(
                    child: Text('Falhou:('),
                  ),
                );
              } else {
                return GridView.builder(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: controller.getCount(controller.gifMap['data']),
                  itemBuilder: (context, index) {
                    if (controller.search.value.isEmpty ||index < controller.gifMap['data'].length) {
                      return GestureDetector(
                        onLongPress: () => Share.share(controller.gifMap['data'][index]['images']['fixed_height']['url']),
                        onTap: () => Get.to(() => GifPage(gifData: controller.gifMap['data'][index])),
                        child: FadeInImage.memoryNetwork(
                          placeholder: kTransparentImage,
                          image: '${controller.gifMap['data'][index]['images']['fixed_height']['url']}',
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                      );
                    } else {
                      return GestureDetector(
                        onTap: () => controller.offset.value += 19,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 70,
                              ),
                              Text(
                                'Carregar mais...',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              )
                            ]),
                      );
                    }
                  },
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}
