import 'package:chess/controllers/middleware.dart';
import 'package:chess/models/piece_view.dart';
import 'package:chess/models/player.dart';
import 'package:flutter/material.dart';

class QueenView extends PieceView {
  const QueenView({
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
              ? 'assets/queen_white.png'
              : 'assets/queen_black.png',
        ),
      ),
    );
  }

  @override
  void onTap() {
    print(super.mapToPiece);
  }
}
