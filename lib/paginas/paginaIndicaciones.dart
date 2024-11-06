import 'package:flutter/material.dart';
import 'package:prueba1/paginas/paginaCalibracion.dart';
import 'package:prueba1/utilidades/constantesColores.dart';
import 'package:prueba1/widgets/contenedorTexto.dart';
import 'package:prueba1/widgets/imgRedonda.dart';

class PaginaIndicaciones extends StatelessWidget {
  const PaginaIndicaciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comienzo de diagnostico'),
      ),
      backgroundColor: Constantescolores.fondogenerico,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: const Text(
                    'Colocate los sensores',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: 
                  ImgRedondo()
                )
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            ContenedorTexto(texto: 'Sensor de Frecuencia Respiratoria', tamanio: 25,),
            ContenedorTexto(
                texto: 'Colocar la banda en el torax debajo de las costillas'),
                ContenedorTexto(texto: 'Sensor de Frecuencia Respiratoria', tamanio: 25,),
            ContenedorTexto(
                texto: 'Colocar la banda en el torax debajo de las costillas'),
            
            ContenedorTexto(texto: 'Sensor de sudoracion',tamanio: 25,),
            ContenedorTexto(
                texto: 'Coloque los dedales que se encuentran en el compartimento en los dedos medio y anular'),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const PaginaCalibracion();
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
