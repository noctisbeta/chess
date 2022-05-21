import 'package:chess/models/piece.dart';
import 'package:chess/models/pieces/bishop.dart';
import 'package:chess/models/pieces/king.dart';
import 'package:chess/models/pieces/knight.dart';
import 'package:chess/models/pieces/pawn.dart';
import 'package:chess/models/pieces/queen.dart';
import 'package:chess/models/pieces/rook.dart';
import 'package:chess/models/player.dart';

const List<List<Piece?>> initialBoard = [
  [
    Rook(
      player: Player.second,
    ),
    Knight(
      player: Player.second,
    ),
    Bishop(
      player: Player.second,
    ),
    King(
      player: Player.second,
    ),
    Queen(
      player: Player.second,
    ),
    Bishop(
      player: Player.second,
    ),
    Knight(
      player: Player.second,
    ),
    Rook(
      player: Player.second,
    )
  ],
  [
    Pawn(
      player: Player.second,
    ),
    Pawn(
      player: Player.second,
    ),
    Pawn(
      player: Player.second,
    ),
    Pawn(
      player: Player.second,
    ),
    Pawn(
      player: Player.second,
    ),
    Pawn(
      player: Player.second,
    ),
    Pawn(
      player: Player.second,
    ),
    Pawn(
      player: Player.second,
    )
  ],
  [null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null],
  [
    Pawn(
      player: Player.first,
    ),
    Pawn(
      player: Player.first,
    ),
    Pawn(
      player: Player.first,
    ),
    Pawn(
      player: Player.first,
    ),
    Pawn(
      player: Player.first,
    ),
    Pawn(
      player: Player.first,
    ),
    Pawn(
      player: Player.first,
    ),
    Pawn(
      player: Player.first,
    )
  ],
  [
    Rook(
      player: Player.first,
    ),
    Knight(
      player: Player.first,
    ),
    Bishop(
      player: Player.first,
    ),
    Queen(
      player: Player.first,
    ),
    King(
      player: Player.first,
    ),
    Bishop(
      player: Player.first,
    ),
    Knight(
      player: Player.first,
    ),
    Rook(
      player: Player.first,
    )
  ],
];
