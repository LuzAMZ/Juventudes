import 'package:flutter/material.dart';

class ConstantesImgs {
static const String pulmones = 'assets/imgs/pulmones.jpg';
static const String corazon = 'assets/imgs/corazon.png'; 
static const String sudoracion = 'assets/imgs/sudoracion.jpeg'; 
static const String frecresp = 'assets/imgs/frecresp.png'; 
static const String freccardiaca = 'assets/imgs/freccardiaca.jpg'; 
static const String respgalvanica = 'assets/imgs/respgalvanica.png'; 
static const String meditacion = 'assets/imgs/meditacion.jpg';
static const String respiracion = 'assets/imgs/respiracion.jpg';
static const String logo = 'assets/imgs/SerenitySense.png'; 
static const String robot = 'assets/imgs/robot.jpg'; 
}


Widget insertlogo({double ancho = 300, double alto = 300}) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      SizedBox(
        width: ancho,
        height: alto,
        child: Image.asset(ConstantesImgs.logo),
      ),
    ],
  );
}