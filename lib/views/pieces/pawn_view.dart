import 'dart:developer';

import 'package:chess/controllers/middleware.dart';
import 'package:chess/models/piece_view.dart';
import 'package:chess/models/pieces/pawn.dart';
import 'package:chess/models/player.dart';
import 'package:flutter/material.dart';

class PawnView extends PieceView {
  const PawnView({
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
              ? 'assets/pawn_white.png'
              : 'assets/pawn_black.png',
        ),
      ),
    );
  }

  @override
  void onTap() {
    print(super.mapToPiece as Pawn);
  }
}
