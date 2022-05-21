import 'package:chess/models/player.dart';
import 'package:vector_math/vector_math.dart';

abstract class Piece {
  const Piece({
    required this.player,
  });

  List<Vector2> getValidMoves(
    int i,
    int j,
    List<List<Piece?>> boardPieces,
  );

  final Player player;
}
