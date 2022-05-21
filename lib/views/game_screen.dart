import 'package:chess/views/board_pieces.dart';
import 'package:chess/views/chessboard.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chess',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            children: const [
              Chessboard(),
              BoardPieces(),
            ],
          ),
        ],
      ),
    );
  }
}
