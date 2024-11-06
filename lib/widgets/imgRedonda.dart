import 'package:flutter/material.dart';

class ImgRedondo extends StatelessWidget {
  const ImgRedondo({
    super.key,
     this.imgSrc = 'https://m.media-amazon.com/images/I/51DBd7O6GEL._AC_SX569_.jpg'
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
