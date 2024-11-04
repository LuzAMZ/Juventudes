import 'package:flutter/material.dart';
import 'package:prueba1/paginas/paginaCalibracion.dart';

class PaginaIndicaciones extends StatelessWidget {
  const PaginaIndicaciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('comencemos con el diagnostico'),
            Row(
              children: [
                Column(
                  children: [
                    const Text('Colocate los sensores'),
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: Image.network(
                          'https://m.media-amazon.com/images/I/51DBd7O6GEL._AC_SX569_.jpg'),
                    )
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  children: [
                    Text('sensor de respiracion:     hjhjhj'),
                    Text('sensor cardiaco:     hjhjhj'),
                    Text('sensor de sudoracion:     hjhjhj'),
                  ],
                )
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const PaginaCalibracion();
                }));
              },
              child: const Text('Continuar'),
            )
          ],
        ),
      ),
    );
  }
}
