import 'package:flutter/material.dart';


class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Column(children: [
      Text('Exito'),
      Text('Conectado'),
    ])));
  }
}