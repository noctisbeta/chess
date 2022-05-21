import 'package:chess/models/piece.dart';
import 'package:vector_math/vector_math.dart';

class Bishop extends Piece {
  const Bishop({
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
