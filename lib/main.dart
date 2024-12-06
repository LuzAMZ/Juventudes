import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba1/manejo_estados/api_rest/api_rest_state.dart';
import 'package:prueba1/paginas/paginaIndicaciones.dart';
import 'package:prueba1/utilidades/constantesColores.dart';
import 'package:prueba1/utilidades/constantesImgs.dart';
import 'package:prueba1/widgets/contenedorTexto.dart';
import 'package:prueba1/widgets/imgRedonda.dart';

import 'manejo_estados/api_rest/api_rest_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serenity Sense',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 5, 92, 163)),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => RestCubit(),
        child: const MyHomePage(title: 'Serenity Sense'),
      ),
    );
  }
}

Widget Insertlogo({String fotoLogo = ConstantesImgs.logo}) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      SizedBox(
        width: 300,
        height: 300,
        child: Image.asset(fotoLogo),
      ),
    ],
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      backgroundColor: Constantescolores.fondogenerico,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Insertlogo(),
            const ContenedorTexto(
              texto: 'BIENVENIDO',
              tamanio: 30,
            ),
            BlocBuilder<RestCubit, RestState>(
              builder: (context, state) {
                return Text(state.datosRecibidos);
              },
            ),
            const Text(
              'Introduce tu edad',
            ),
            const Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 80),
              child: TextField(),
            ),
            const Text(
              'Introduce tu carrera',
            ),
            const Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 80),
              child: TextField(),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const PaginaIndicaciones();
                }));
              },
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: SizedBox(
                  width: 300,
                  height: 300,
                  child: ImgRedondo(ConstantesImgs.robot),
                ),
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
