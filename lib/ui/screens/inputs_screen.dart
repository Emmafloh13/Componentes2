import 'package:flutter/material.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  String _userName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrada de datos por el usuario'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearEntradaNombre(),
          _crearEnttradaPswd(),
        ],
      ),
    );
  }

  Widget _crearEntradaNombre() {
    return TextField(
      autofocus: true,
      textAlign: TextAlign.left,
      style: const TextStyle(
        color: Colors.black45,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Color.fromARGB(255, 8, 49, 162),
      cursorRadius: const Radius.circular(9.0),
      cursorWidth: 3.0,
      //maxLength: 4,
      maxLines: null,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: "Pon aquí tu nombre",
        labelText: "Nombre:",
        // icono normal icon: Icon(Icons.person_4),
        prefixIcon: Icon(Icons.person),
        // prefix: const CircularProgressIndicotor(),
        //iconColor: Color.fromARGB(255, 8, 49, 162)
      ),
      onChanged: (valor) {
        _userName = valor;
        print(_userName);
      },
    );
  }

  Widget _crearEnttradaPswd() {
    return TextField(
      autofocus: true,
      textAlign: TextAlign.left,
      style: const TextStyle(
        color: Colors.black45,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Color.fromARGB(255, 8, 49, 162),
      cursorRadius: const Radius.circular(9.0),
      cursorWidth: 3.0,
      maxLength: 8,
      obscureText: true,
      keyboardType: TextInputType.number,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: "Escribe tu contraseña",
        labelText: "Contraseña:",
        prefixIcon: Icon(Icons.key_outlined),
        //suffixIcon: const Icon(Icons.key)
      ),
      onChanged: (valor) {
        _userName = valor;
        print(_userName);
      },
    );
  }
}
