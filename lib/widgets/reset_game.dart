import 'package:flutter/material.dart';
import 'package:rps_mobx/store/rps_game_store.dart';
import 'package:provider/provider.dart';

class ResetGameWidget extends StatelessWidget {
  const ResetGameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gameStore = Provider.of<RPSGameStore>(context);
    return GestureDetector(
      onTap: (() {
        gameStore.resetGame();
      }),
      child: const SizedBox(
          height: 60,
          child: BottomAppBar(
              child: Center(
                  child: Text(
            "RESET GAME",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
          )))),
    );
  }
}
