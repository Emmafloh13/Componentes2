import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        barrierColor: Colors.black26,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color.fromARGB(255, 8, 49, 162),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            title: const Text('Alerta te estan espiando'),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Cuidado'),
                FlutterLogo(
                  size: 50.0,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Aceptar')),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Cancelar')),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _mostrarAlert(context),
          child: const Text('Mostrar alerta'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.keyboard_return_sharp),
      ),
    );
  }
}
