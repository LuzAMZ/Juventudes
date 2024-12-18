import 'package:flutter/material.dart';
import 'package:prueba1/paginas/paginaDiagnostico.dart';
import 'package:prueba1/paginas/paginadiagnostico1.dart';
import 'package:prueba1/utilidades/constantesColores.dart';
import 'package:prueba1/utilidades/constantesImgs.dart';
import 'package:prueba1/widgets/contenedorTexto.dart';
import 'package:prueba1/widgets/imgRedonda.dart';
import 'package:prueba1/widgets/termometro.dart';

class PaginaCalibracion extends StatefulWidget {
  const PaginaCalibracion({super.key});

  @override
  State<PaginaCalibracion> createState() => _PaginaCalibracionState();
}

class _PaginaCalibracionState extends State<PaginaCalibracion> {
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

  bool mostrandoTermometro = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALIBRACION'),
      ),
      backgroundColor: Constantescolores.fondogenerico,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ContenedorTexto(
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
                const ContenedorTexto(
                    texto:
                        'Asegurate de tener bien colocados correctamente los sensores'),
                const SizedBox(
                    width: 200,
                    height: 90,
                    child: ImgRedondo(ConstantesImgs.robot)),
                ElevatedButton(
                  onPressed: () {
                    if (mostrandoTermometro) {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const PaginaDiagnostico1();
                      }));
                    } else {
                      setState(() {
                        mostrandoTermometro = true;
                      });
                    }
                  },
                  child: const Text('Continuar'),
                ),
                if (mostrandoTermometro) const Termometro()
              ],
            )
          ],
        ),
      ),
    );
  }
}
