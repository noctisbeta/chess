import 'dart:developer';

import 'package:chess/models/piece.dart';
import 'package:chess/models/player.dart';
import 'package:vector_math/vector_math.dart';

class Pawn extends Piece {
  const Pawn({
    required super.player,
  });

  @override
  List<Vector2> getValidMoves(
    int i,
    int j,
    List<List<Piece?>> boardPieces,
  ) {
    final List<Vector2> moves = [];

    for (int k = 0; k < boardPieces.length; k++) {
      for (int l = 0; l < boardPieces[k].length; l++) {
        if (k < j && k > j - 2) {
          moves.add(Vector2(i.toDouble(), k.toDouble()));
        }
      }
    }

    return moves;
  }
}
