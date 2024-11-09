import 'package:flutter/material.dart';
import 'package:prueba1/paginas/paginaDiagnostico.dart';
import 'package:prueba1/utilidades/constantesColores.dart';
import 'package:prueba1/utilidades/constantesImgs.dart';
import 'package:prueba1/widgets/contenedorTexto.dart';
import 'package:prueba1/widgets/imgRedonda.dart';
import 'package:prueba1/widgets/termometro.dart';

class PaginaDiagnostico1 extends StatelessWidget {
  const PaginaDiagnostico1({super.key});

  Widget parImagenesejercicios(
      {String fotoMeditacion = ConstantesImgs.meditacion,
      String fotorespiracion = ConstantesImgs.respiracion}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 500,
          height: 200,
          child: Image.asset(fotoMeditacion),
        ),
        SizedBox(
          width: 200,
          height: 200,
          child: Image.asset(
            fotorespiracion,
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ContenedorTexto(
              texto: 'Selecciona una opcion:',
              tamanio: 25,
            ),
            const ContenedorTexto(
              texto: 'Mediatcion',
              tamanio: 25,
            ),
            const ContenedorTexto(
              texto: 'tecnicas de respiracion',
              tamanio: 25,
            ),
            Column(
              children: [
                parImagenesejercicios(
                    fotoMeditacion: ConstantesImgs.meditacion,
                    fotorespiracion: ConstantesImgs.respiracion)
              ],
            ),
            const Padding(padding: EdgeInsets.all(30)),
            const Column(
              children: [
                SizedBox(
                    width: 150,
                    height: 150,
                    child: ImgRedondo(ConstantesImgs.robot)),
              ],
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
        ),
      ),
    );
  }
}
