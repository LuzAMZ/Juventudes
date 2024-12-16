import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba1/paginas/paginaRegistro/paginaRegistro.dart';
import 'manejo_estados/api_rest/api_rest_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        child: const PaginaRegistro(title: 'Serenity Sense'),
      ),
    );
  }
}

