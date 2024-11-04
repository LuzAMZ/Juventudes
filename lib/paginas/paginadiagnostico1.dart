import 'package:flutter/material.dart';

class PaginaDiagnostico1 extends StatelessWidget {
  const PaginaDiagnostico1({super.key});

  Widget parImagenes() {
    return Row(
      children: [
        SizedBox(
          width: 90,
          height: 90,
          child: Image.network(
              'https://m.media-amazon.com/images/I/51DBd7O6GEL._AC_SX569_.jpg'),
        ),
        SizedBox(
          width: 90,
          height: 90,
          child: Image.network(
              'https://m.media-amazon.com/images/I/51DBd7O6GEL._AC_SX569_.jpg'),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Tu diagnostico es el siguiente'),
        ],
      ),
    );
  }
}
