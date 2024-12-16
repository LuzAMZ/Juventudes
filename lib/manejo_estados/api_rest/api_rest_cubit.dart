import 'dart:convert';

import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart' as router;

import 'api_rest_state.dart';

class RestCubit extends Cubit<RestState> {
  static const port = 8080;
  final app = router.Router();

  RestCubit() : super(RestState.initial()) {
    initializeRESTAPI();
  }

  void initializeRESTAPI() async {
    app.post(
      '/test',
      (Request req) async {
        final payload = await req.readAsString();

        emit(state.copyWith(datosRecibidos: payload));
        return Response(
          HttpStatus.ok,
          body: jsonEncode({'respuesta': 'Todo bien'}),
          headers: {"Content-Type": ContentType.json.mimeType},
        );
      },
    );

    final handler =
        const Pipeline().addMiddleware(logRequests()).addHandler(app);
    final server = await serve(handler, InternetAddress.anyIPv4, port);
    print(server.address);
  }
}
