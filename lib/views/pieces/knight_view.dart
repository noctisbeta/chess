import 'package:chess/controllers/middleware.dart';
import 'package:chess/models/piece_view.dart';
import 'package:chess/models/player.dart';
import 'package:flutter/material.dart';

class KnightView extends PieceView {
  const KnightView({
    required super.player,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: Middleware.tileHeight,
        width: Middleware.tileWidth,
        child: Image.asset(
          player == Player.first
              ? 'assets/knight_white.png'
              : 'assets/knight_black.png',
        ),
      ),
    );
  }

  @override
  void onTap() {
    print(super.mapToPiece);
  }
}
