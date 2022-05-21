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
import 'package:chess/views/pieces/empty_piece_view.dart';
import 'package:chess/views/pieces/king_view.dart';
import 'package:chess/views/pieces/knight_view.dart';
import 'package:chess/views/pieces/pawn_view.dart';
import 'package:chess/views/pieces/queen_view.dart';
import 'package:chess/views/pieces/rook_view.dart';
import 'package:flutter/material.dart';

class Middleware {
  static Size get _tileSize => const Size(50, 50);

  static double get tileWidth => _tileSize.width;

  static double get tileHeight => _tileSize.height;

  static Map<Player, Color> get tileColors => {
        Player.first: Colors.yellowAccent.shade100,
        Player.second: Colors.brown.shade700,
      };

  static Map<Type, Function> get _pieceToPieceView => {
        Bishop: BishopView.new,
        King: KingView.new,
        Knight: KnightView.new,
        Pawn: PawnView.new,
        Queen: QueenView.new,
        Rook: RookView.new,
      };

  static PieceView getPieceViewFromPiece(Piece? piece) {
    if (piece == null) {
      return const EmptyPieceView(
        player: Player.none,
      );
    }
    return _pieceToPieceView[piece.runtimeType]!(
      player: piece.player,
    );
  }

  static Map<Type, Function> get _pieceViewToPiece => {
        BishopView: Bishop.new,
        KingView: King.new,
        KnightView: Knight.new,
        PawnView: Pawn.new,
        QueenView: Queen.new,
        RookView: Rook.new,
      };

  static Piece? getPieceFromPieceView(PieceView? piece) {
    if (piece == null) {
      return null;
    }
    return _pieceViewToPiece[piece.runtimeType]!(
      player: piece.player,
    );
  }
}
