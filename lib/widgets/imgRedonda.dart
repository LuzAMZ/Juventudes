import 'package:flutter/material.dart';

class ImgRedondo extends StatelessWidget {
  const ImgRedondo(String corazon, {
    super.key,
     this.imgSrc = 'https://static.vecteezy.com/system/resources/previews/022/039/093/non_2x/happy-illustration-robot-design-kawaii-free-vector.jpg'
  });
  final String imgSrc;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(
        Radius.circular(50),
      ),
      image: DecorationImage(
        image: NetworkImage(imgSrc),
      ),
    ));
  }
}
