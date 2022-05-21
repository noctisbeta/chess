import 'package:chess/models/piece.dart';
import 'package:vector_math/vector_math.dart';

class Queen extends Piece {
  const Queen({
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
