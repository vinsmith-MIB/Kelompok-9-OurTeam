import 'package:flutter/material.dart';
import 'dart:math' as math;

class IDDesc extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final double scale;

  const IDDesc({super.key, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 600 * math.pow(scale, 4).toDouble(),
        height: 140 * scale,
        margin: const EdgeInsets.only(top: 60),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.black26,
        ),
        child:  Center(
          child: Text( 'Kevin Cahyo Pratama',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20 * math.pow(scale, 2).toDouble(),
            
          ),),
        ),
        );
  }
}
