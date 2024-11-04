import 'package:flutter/material.dart';

class Termometro extends StatefulWidget {
  const Termometro({super.key});

  @override
  State<Termometro> createState() => _TermometroState();
}

class _TermometroState extends State<Termometro>
    with SingleTickerProviderStateMixin {
  //Maximo es 80
  double posicionFlecha = -15;
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: -15, end: 300).animate(controller)
      ..addListener(() {
        setState(() {
          posicionFlecha = animation.value;
        });
      });
    controller.forward();
    animation.addStatusListener((status){
      if(status == AnimationStatus.completed){
        controller.reverse();
      }
    });
    
  }

  double tamanioSegmento = 100;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                  height: 20,
                  width: tamanioSegmento,
                  color: Colors.red,
                ),
                Container(
                  height: 20,
                  width: tamanioSegmento,
                  color: Colors.yellow,
                ),
                Container(
                  height: 20,
                  width: tamanioSegmento,
                  color: Colors.green,
                )
              ],
            ),
            Positioned(
                top: -10,
                left: posicionFlecha,
                child: const Icon(Icons.arrow_downward))
          ],
        ));
  }
}
