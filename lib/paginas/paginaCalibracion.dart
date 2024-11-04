import 'package:flutter/material.dart';
import 'package:prueba1/paginas/paginaDiagnostico.dart';

class PaginaCalibracion extends StatelessWidget {
  const PaginaCalibracion({super.key});

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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('CALIBRACION '),
            const Text('Mantengase quieto durante el diagnostico'),
            Row(
              children: [
                Column(
                  children: [
                    parImagenes(),
                    parImagenes(),
                    parImagenes(),
                  ],
                ),
                Column(
                  children: [
                    const Text('Colocate los sensores'),
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: Image.network(
                          'https://m.media-amazon.com/images/I/51DBd7O6GEL._AC_SX569_.jpg'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return PaginaDiagnostico();
                            },
                          ),
                        );
                      },
                      child: Text('Continuar'),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
