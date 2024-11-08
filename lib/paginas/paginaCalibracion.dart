import 'package:flutter/material.dart';
import 'package:prueba1/paginas/paginaDiagnostico.dart';
import 'package:prueba1/paginas/paginadiagnostico1.dart';
import 'package:prueba1/utilidades/constantesColores.dart';
import 'package:prueba1/utilidades/constantesImgs.dart';
import 'package:prueba1/widgets/contenedorTexto.dart';
import 'package:prueba1/widgets/imgRedonda.dart';

class PaginaCalibracion extends StatelessWidget {
  const PaginaCalibracion({super.key});

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
          width: 600,
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
        title: const Text('CALIBRACION'),
      ),
      backgroundColor: Constantescolores.fondogenerico,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ContenedorTexto(
              texto: 'Mantengase quieto durante el diagnostico',
              tamanio: 16,
            ),
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
                ContenedorTexto(
                    texto:
                        'Asegurate de tener bien colocados correctamente los sensores'),
                SizedBox(
                  width: 200,
                  height: 90,             
                  child: ImgRedondo(ConstantesImgs.robot)
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const PaginaDiagnostico();
                    }));
                  },
                  child: const Text('Continuar'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
