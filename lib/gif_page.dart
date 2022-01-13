import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GifPage extends StatelessWidget {
  const GifPage({Key? key, this.gifData}) : super(key: key);

  final Map? gifData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(gifData!['title']),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () => Share.share(gifData!['images']['fixed_height']['url']),
              icon: const Icon(Icons.share))
        ],
      ),
      body: Center(
        child: Image.network('${gifData!['images']['fixed_height']['url']}'),
      ),
    );
  }
}
