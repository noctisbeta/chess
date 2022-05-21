import 'package:chess/controllers/middleware.dart';
import 'package:chess/models/piece.dart';
import 'package:chess/models/piece_view.dart';
import 'package:chess/models/player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BishopView extends PieceView {
  const BishopView({
    required super.player,
    super.key,
  });

  @override
  void onTap() {
    print(super.mapToPiece);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: Middleware.tileHeight,
        width: Middleware.tileWidth,
        child: Image.asset(
          player == Player.first
              ? 'assets/bishop_white.png'
              : 'assets/bishop_black.png',
        ),
      ),
    );
  }
}
