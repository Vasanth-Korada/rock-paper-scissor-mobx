import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rps_mobx/utils/constants.dart';

import '../store/rps_game_store.dart';

import 'package:provider/provider.dart';

class GameAreaWidget extends StatelessWidget {
  const GameAreaWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gameStore = Provider.of<RPSGameStore>(context);
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  gameStore.playerChoice = AppConstants.ROCK;
                  gameStore.playComputer();
                },
                child: Image.asset(
                  "assets/images/rock.png",
                  height: 50,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    gameStore.playerChoice = AppConstants.PAPER;
                    gameStore.playComputer();
                  },
                  child: Image.asset("assets/images/paper.png", height: 50)),
              GestureDetector(
                  onTap: () {
                    gameStore.playerChoice = AppConstants.SCISSOR;
                    gameStore.playComputer();
                  },
                  child: Image.asset("assets/images/scissor.png", height: 50)),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 64),
            child: RotatedBox(
                quarterTurns: 1,
                child: Divider(
                  thickness: 2,
                )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Observer(builder: (_) {
                return Image.asset(gameStore.computerChoiceImage, height: 50);
              }),
            ],
          )
        ],
      ),
    );
  }
}
