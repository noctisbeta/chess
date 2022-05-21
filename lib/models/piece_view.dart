import 'package:chess/controllers/middleware.dart';
import 'package:chess/models/piece.dart';
import 'package:chess/models/player.dart';
import 'package:flutter/material.dart';

abstract class PieceView extends StatelessWidget {
  const PieceView({
    required this.player,
    super.key,
  });

  final Player player;

  Type get mapToPiece {
    return Middleware.getPieceFromPieceView(this).runtimeType;
  }

  void onTap();
}
