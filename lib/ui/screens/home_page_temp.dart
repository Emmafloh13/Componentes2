import 'dart:js';
import 'package:componentes2/providers/menu_providers.dart';
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
      ),
      body: _lista(),
    );
  }
}

Widget _lista() {
  /*Recuperacion de datos de un archivo json
  print(menuProvider.opciones);
  menuProvider.loadData().then((opciones) {
    print('_lista: ');
    print(opciones);
  });*/
  return FutureBuilder(
    future: menuProvider.loadData(), //indicando lo que queremos esperar
    builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
      print('builder: ');
      print(snapshot.data);
      return ListView(
        children: _listaItems(snapshot.data as List<dynamic>),
      );
    },
  );
}

List<Widget> _listaItems(List<dynamic> data) {
  final List<Widget> opciones = [];
  data.forEach((opt) {
    final tile = ListTile(
      title: Text(opt['texto']),
      leading: const Icon(
        Icons.account_box,
        color: Colors.blueAccent,
      ),
      trailing: const Icon(
        Icons.keyboard_arrow_right,
        color: Colors.blue,
      ),
      subtitle: Text(opt['texto2']),
      onTap: () {},
    );
    opciones
      ..add(tile)
      ..add(const Divider());
  });

  return opciones;
  // return const [

  //   ListTile(
  //     title: Text('Sí, yo quería ser esa mujer'),
  //     subtitle: Text('La madre de tus hijos'),
  //   ),
  //   Divider(
  //     thickness: 1.5,
  //     color: Color.fromARGB(212, 217, 228, 234),
  //   ),
  //   ListTile(
  //     title: Text('Y juntos caminar hacia el altar'),
  //     subtitle: Text('Directo hacia la muerte'),
  //   ),
  //   Divider(
  //     thickness: 1.5,
  //     color: Color.fromARGB(212, 222, 235, 243),
  //   ),
  //   ListTile(
  //     title: Text('Y al final'),
  //     subtitle: Text('Ni hablar'),
  //   ),
  //];
}
