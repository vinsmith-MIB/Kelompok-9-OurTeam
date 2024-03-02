import 'package:flutter/material.dart';

class IDCard extends StatelessWidget {
  final String gambar;
  final double scale;
  const IDCard(this.gambar, {super.key, this.scale = 1});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220 * scale,
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.black26,
      ),
      child: Stack(children: <Widget>[
        const Card(
          color: Colors.black12,
        ),
        // ignore: avoid_unnecessary_containers
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Image.asset(
            'assets/kevin.jpg',
            fit: BoxFit.fill,

          ),
        ),
      ]),
    );
  }
}
