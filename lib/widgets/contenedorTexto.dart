import 'package:flutter/material.dart';

class ContenedorTexto extends StatelessWidget {
  const ContenedorTexto({super.key, required this.texto, this.tamanio = 16});

  final String texto;
  final double tamanio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: DecoratedBox(
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            texto,
            style: TextStyle(color: Colors.white, fontSize: tamanio),
          ),
        ),
      ),
    );
  }
}
