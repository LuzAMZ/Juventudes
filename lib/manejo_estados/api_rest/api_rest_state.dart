import 'dart:convert';

import 'package:equatable/equatable.dart';

class RestState extends Equatable {
  final String datosRecibidos;
  const RestState({
    required this.datosRecibidos,
  });

  factory RestState.initial() {
    return const RestState(datosRecibidos: '');
  }

  RestState copyWith({
    String? datosRecibidos,
  }) {
    return RestState(
      datosRecibidos: datosRecibidos ?? this.datosRecibidos,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'datosRecibidos': datosRecibidos,
    };
  }

  factory RestState.fromMap(Map<String, dynamic> map) {
    return RestState(
      datosRecibidos: map['datosRecibidos'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RestState.fromJson(String source) =>
      RestState.fromMap(json.decode(source));

  @override
  List<Object> get props => [datosRecibidos];
}
