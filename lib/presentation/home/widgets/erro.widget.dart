import 'package:flutter/material.dart';

class ErroWidget extends StatelessWidget {
  const ErroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Falhou :(',
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
