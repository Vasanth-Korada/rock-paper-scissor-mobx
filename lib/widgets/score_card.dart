import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../store/rps_game_store.dart';
import 'package:provider/provider.dart';

class ScoreCardWidget extends StatelessWidget {
  const ScoreCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gameStore = Provider.of<RPSGameStore>(context);
    return Observer(builder: (_) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "PLAYER\n${gameStore.playerScore}",
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24),
          ),
          Text(
            "COMPUTER\n${gameStore.computerScore}",
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24),
          ),
        ],
      );
    });
  }
}
