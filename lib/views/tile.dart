import 'package:chess/controllers/middleware.dart';
import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  const Tile({
    required this.color,
    Key? key,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Middleware.tileHeight,
      width: Middleware.tileWidth,
      color: color,
    );
  }
}
