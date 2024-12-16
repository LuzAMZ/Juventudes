import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba1/manejo_estados/api_rest/api_rest_cubit.dart';
import 'package:prueba1/manejo_estados/api_rest/api_rest_state.dart';
import 'package:prueba1/paginas/paginaIndicaciones.dart';
import 'package:prueba1/utilidades/constantesColores.dart';
import 'package:prueba1/utilidades/constantesImgs.dart';

import 'utilidadesRegistro.dart';

class PaginaRegistro extends StatefulWidget {
  const PaginaRegistro({super.key, required this.title});
  final String title;

  @override
  State<PaginaRegistro> createState() => _PaginaRegistroState();
}

class _PaginaRegistroState extends State<PaginaRegistro> {
  OpcionEdad? edadSeleccionada;
  OpcionCarrera? carreraSeleccionada;

  bool hayError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constantescolores.fondogenerico,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: insertlogo(),
              ),
              const Text(
                'BIENVENIDO',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              BlocBuilder<RestCubit, RestState>(
                builder: (context, state) {
                  return Text(state.datosRecibidos);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  children: [
                    const Text(
                      'Introduce tu carrera',
                    ),
                    DropdownMenu(
                      dropdownMenuEntries: OpcionCarrera.entries,
                      enableFilter: true,
                      requestFocusOnTap: true,
                      onSelected: (OpcionCarrera? value) {
                        if (value != null) {
                          carreraSeleccionada = value;
                        }
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  children: [
                    const Text(
                      'Introduce tu edad',
                    ),
                    DropdownMenu(
                      dropdownMenuEntries: OpcionEdad.entries,
                      onSelected: (OpcionEdad? value) {
                        if (value != null) {
                          edadSeleccionada = value;
                        }
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                child: ElevatedButton(
                    onPressed: () {
                      if (carreraSeleccionada != null &&
                          edadSeleccionada != null) {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const PaginaIndicaciones();
                        }));
                      } else {
                        setState(() {
                        hayError = true;  
                        });
                        
                      }
                    },
                    child: const Text('Continuar')),
              ),
              if (hayError)
                const Text(
                  'Selecciona edad y carrera',
                  style: TextStyle(color: Colors.red),
                )
            ],
          ),
        ),
      ),
    );
  }
}
