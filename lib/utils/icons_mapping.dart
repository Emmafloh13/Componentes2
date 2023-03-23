import 'package:flutter/material.dart';

class IconMapping {
//definir un mapa
  final _icons = const <String, IconData>{
    'add_alert': Icons.add_alert,
    'input': Icons.input,
    'folder_open': Icons.folder_open,
    'data': Icons.data_exploration_rounded,
    'list': Icons.list_alt,
    'camera': Icons.camera_alt_rounded,
  };
  const IconMapping();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  Icon getIcon(String iconName) {
    return Icon(
      _icons[iconName],
      color: Color.fromARGB(255, 8, 49, 162),
    );
  }
}
