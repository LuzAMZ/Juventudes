
import 'dart:collection';

import 'package:flutter/material.dart';

enum OpcionEdad {
  fase1(
    '16-18',
  ),
  fase2(
    '18-20',
  ),
  fase3(
    '20-24',
  ),
  fase4(
    '24+',
  );

  const OpcionEdad(this.titulo);
  final String titulo;

  static final List<DropdownMenuEntry<OpcionEdad>> entries =
      UnmodifiableListView<DropdownMenuEntry<OpcionEdad>>(
    values.map<DropdownMenuEntry<OpcionEdad>>(
      (OpcionEdad opcion) => DropdownMenuEntry<OpcionEdad>(
        value: opcion,
        label: opcion.titulo,
      ),
    ),
  );
}

enum OpcionCarrera {
  issc(
    'ISSC',
  ),
  biomedica(
    'IB',
  ),
  robotica(
    'IR',
  ),
  filosofia(
    'Filosofia',
  );

  const OpcionCarrera(this.titulo);
  final String titulo;

  static final List<DropdownMenuEntry<OpcionCarrera>> entries =
      UnmodifiableListView<DropdownMenuEntry<OpcionCarrera>>(
    values.map<DropdownMenuEntry<OpcionCarrera>>(
      (OpcionCarrera opcion) => DropdownMenuEntry<OpcionCarrera>(
        value: opcion,
        label: opcion.titulo,
      ),
    ),
  );
}
