import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> misColores = [
    'Rojo',
    'Verde',
    'Azul',
    'Amarillo',
    'Naranja'
  ];

  HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: ListView.builder(
        itemCount: misColores.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(misColores[index]),
          );
        },
      ),
    );
  }
}
