import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  final Color color;
  Dot(this.color);
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Icon(
        Icons.blur_circular,
        color: color,
      ),
    );
  }
}
