import 'package:chess/models/piece.dart';
import 'package:vector_math/vector_math.dart';

class Knight extends Piece {
  const Knight({
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
