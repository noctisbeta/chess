import 'package:chess/constants/initial_board.dart';
import 'package:chess/models/piece.dart';
import 'package:chess/models/pieces/bishop.dart';
import 'package:chess/models/pieces/king.dart';
import 'package:chess/models/pieces/knight.dart';
import 'package:chess/models/pieces/pawn.dart';
import 'package:chess/models/pieces/queen.dart';
import 'package:chess/models/pieces/rook.dart';
import 'package:chess/models/player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@immutable
class GameState {
  const GameState.initial({
    this.chessboardState = initialBoard,
  });

  static const int rowCount = 8;

  static const int columnCount = 8;

  final List<List<Piece?>> chessboardState;

  static final List<Type> pieces = [
    Pawn,
    Bishop,
    Knight,
    Rook,
    Queen,
    King,
  ];
}
