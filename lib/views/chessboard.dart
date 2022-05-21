import 'package:chess/controllers/game_notifier.dart';
import 'package:chess/controllers/middleware.dart';
import 'package:chess/models/game_state.dart';
import 'package:chess/models/piece.dart';
import 'package:chess/models/player.dart';
import 'package:chess/views/tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Chessboard extends ConsumerWidget {
  const Chessboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GameState gameState = ref.watch(gameProvider);

    return Column(
      children: List.generate(
        GameState.rowCount,
        (i) => Row(
          children: List.generate(
            GameState.columnCount,
            (j) => Tile(
              color: (j + i).isEven
                  ? Middleware.tileColors[Player.first]!
                  : Middleware.tileColors[Player.second]!,
            ),
          ),
        ),
      ),
    );
  }
}
