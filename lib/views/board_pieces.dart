import 'package:chess/controllers/game_notifier.dart';
import 'package:chess/controllers/middleware.dart';
import 'package:chess/models/game_state.dart';
import 'package:chess/models/piece.dart';
import 'package:chess/models/pieces/bishop.dart';
import 'package:chess/models/player.dart';
import 'package:chess/views/tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BoardPieces extends ConsumerWidget {
  const BoardPieces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GameState gameState = ref.watch(gameProvider);

    return Column(
      children: List.generate(
        GameState.rowCount,
        (i) => Row(
          children: List.generate(
            GameState.columnCount,
            (j) => Middleware.getPieceViewFromPiece(
              gameState.chessboardState[i][j],
            ),
          ),
        ),
      ),
    );
  }
}
