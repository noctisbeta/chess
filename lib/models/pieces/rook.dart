import 'package:chess/models/piece.dart';
import 'package:vector_math/vector_math.dart';

class Rook extends Piece {
  const Rook({
    required super.player,
  });

  @override
  List<Vector2> getValidMoves(
    int i,
    int j,
    List<List<Piece?>> boardPieces,
  ) {
    return [];
  }
}
