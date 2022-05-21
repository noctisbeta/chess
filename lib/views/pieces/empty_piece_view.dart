import 'package:chess/controllers/middleware.dart';
import 'package:chess/models/piece_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EmptyPieceView extends PieceView {
  const EmptyPieceView({
    required super.player,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Middleware.tileHeight,
      width: Middleware.tileWidth,
    );
  }

  @override
  void onTap() {}
}
