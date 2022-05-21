import 'package:chess/models/piece.dart';
import 'package:vector_math/vector_math.dart';

class King extends Piece {
  const King({
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
