import 'dart:js';
import 'package:componentes2/providers/menu_providers.dart';
import 'package:componentes2/ui/screens/alerts_screen.dart';
import 'package:componentes2/utils/icons_mapping.dart';
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
    initialData: const [],
    builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
      //print('builder: ');
      //print(snapshot.data);
      return ListView(
        children: _listaItems(snapshot.data as List<dynamic>, context),
      );
    },
  );
}

List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
  final List<Widget> opciones = [];
  final IconMapping iconMap = const IconMapping();
  data.forEach((opt) {
    final tile = ListTile(
      title: Text(opt['texto']),
      leading: iconMap.getIcon(opt['icon']),
      trailing: const Icon(
        Icons.keyboard_arrow_right,
        color: Color.fromARGB(255, 8, 49, 162),
      ),
      subtitle: Text(opt['texto2']),
      onTap: () {
        // final route = MaterialPageRoute(builder: (context) {
        //   return AlertsScreen();
        // });
        Navigator.pushNamed(context, opt['ruta']);
        //Navigator.push(context, route);
      },
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
