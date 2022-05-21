import 'package:chess/models/game_state.dart';
import 'package:chess/models/piece.dart';
import 'package:chess/models/piece_view.dart';
import 'package:chess/models/pieces/bishop.dart';
import 'package:chess/models/pieces/king.dart';
import 'package:chess/models/pieces/knight.dart';
import 'package:chess/models/pieces/pawn.dart';
import 'package:chess/models/pieces/queen.dart';
import 'package:chess/models/pieces/rook.dart';
import 'package:chess/models/player.dart';
import 'package:chess/views/pieces/bishop_view.dart';
import 'package:chess/views/pieces/knight_view.dart';
import 'package:chess/views/pieces/pawn_view.dart';
import 'package:chess/views/pieces/queen_view.dart';
import 'package:chess/views/pieces/rook_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final gameProvider = StateNotifierProvider<GameNotifier, GameState>(
  (ref) => GameNotifier(),
);

class GameNotifier extends StateNotifier<GameState> {
  GameNotifier()
      : super(
          const GameState.initial(),
        );

  int get columnCount => GameState.columnCount;

  int get rowCount => GameState.rowCount;

  List<List<Piece?>> get chessboardState => state.chessboardState;
}
