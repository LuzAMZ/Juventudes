import 'package:flutter/material.dart';
import 'package:prueba1/paginas/paginadiagnostico1.dart';
import 'package:prueba1/utilidades/constantesColores.dart';
import 'package:prueba1/utilidades/constantesImgs.dart';
import 'package:prueba1/widgets/contenedorTexto.dart';
import 'package:prueba1/widgets/termometro.dart';

class PaginaDiagnostico extends StatelessWidget {
  const PaginaDiagnostico({super.key});

  Widget parImagenes(
      {String fotoInicial = ConstantesImgs.pulmones,
      String fotoSegunda = ConstantesImgs.pulmones}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 90,
          height: 90,
          child: Image.asset(fotoInicial),
        ),
        SizedBox(
          width: 500,
          height: 90,
          child: Image.asset(
            fotoSegunda,
            fit: BoxFit.fill,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PRIMER DIAGNÓSTICO'),
      ),
      backgroundColor: Constantescolores.fondogenerico,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ContenedorTexto(
              texto: 'El resultado de tu diagnostico es el siguiente:',
              tamanio: 25,
            ),
            Row(
              children: [
                Column(
                  children: [
                    parImagenes(
                        fotoInicial: ConstantesImgs.pulmones,
                        fotoSegunda: ConstantesImgs.frecresp),
                    parImagenes(
                        fotoInicial: ConstantesImgs.corazon,
                        fotoSegunda: ConstantesImgs.freccardiaca),
                    parImagenes(
                        fotoInicial: ConstantesImgs.sudoracion,
                        fotoSegunda: ConstantesImgs.respgalvanica),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: Image.network(
                          'https://m.media-amazon.com/images/I/51DBd7O6GEL._AC_SX569_.jpg'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const PaginaDiagnostico1();
                        }));
                      },
                      child: const Text('Continuar'),
                    ),
                  ],
                )
              ],
            ),
            const Padding(padding: EdgeInsets.all(20), child: Termometro()),
          ],
        ),
      ),
    );
  }
}
