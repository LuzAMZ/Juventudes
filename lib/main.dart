import 'package:flutter/material.dart';
import 'package:prueba1/paginas/paginaIndicaciones.dart';
import 'package:prueba1/widgets/contenedorTexto.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 5, 92, 163)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Demo Home Page'),
    );
  }
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ContenedorTexto(
              texto: 'BIENVENIDO',
              tamanio: 24,
            ),
            Text(
              'Introduce tu edad',
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 80),
              child: TextField(),
            ),
            Text(
              'Introduce tu carrera',
            ),
            TextField(),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return PaginaIndicaciones();
                }));
              },
              child: SizedBox(
                width: 90,
                height: 90,
                child: Image.network(
                    'https://m.media-amazon.com/images/I/51DBd7O6GEL._AC_SX569_.jpg'),
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
