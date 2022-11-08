import 'dart:math';

import 'package:mobx/mobx.dart';
import 'package:rps_mobx/utils/constants.dart';

part 'rps_game_store.g.dart';

class RPSGameStore = _RPSGameStore with _$RPSGameStore;

abstract class _RPSGameStore with Store {
  @observable
  int playerScore = 0;

  @observable
  int computerScore = 0;

  @observable
  int playerChoice = 0;

  @observable
  int computerChoice = 1;

  @observable
  bool equalChoices = false;

  @computed
  String get computerChoiceImage {
    String img = "";
    switch (computerChoice) {
      case AppConstants.ROCK:
        img = "assets/images/rock.png";
        break;
      case AppConstants.PAPER:
        img = "assets/images/paper.png";
        break;
      case AppConstants.SCISSOR:
        img = "assets/images/scissor.png";
        break;
      case AppConstants.LOADING:
        img = "assets/images/loading.png";
        break;
    }
    return img;
  }

  @computed
  int get totalScore => playerScore - computerScore;

  @action
  void resetGame() {
    playerScore = 0;
    computerScore = 0;
  }

  @action
  void playComputer() {
    computerChoice = AppConstants.LOADING;
    Future.delayed(const Duration(milliseconds: 300), (() {
      int randInt = Random().nextInt(3) + 1;

      switch (randInt) {
        case AppConstants.ROCK:
          computerChoice = AppConstants.ROCK;
          break;
        case AppConstants.PAPER:
          computerChoice = AppConstants.PAPER;
          break;
        case AppConstants.SCISSOR:
          computerChoice = AppConstants.SCISSOR;
          break;
      }
      if (isDraw(playerChoice, computerChoice)) {
        equalChoices = true;
      } else if (isWin(playerChoice, computerChoice)) {
        playerScore++;
      } else {
        computerScore++;
      }
      equalChoices = false;
    }));
  }

  bool isDraw(int player, int computer) {
    if ((player == AppConstants.ROCK && computer == AppConstants.ROCK) ||
        (player == AppConstants.SCISSOR && computer == AppConstants.SCISSOR) ||
        (player == AppConstants.PAPER && computer == AppConstants.PAPER)) {
      return true;
    } else {
      return false;
    }
  }

  //Winning Conditions
  /*Player -- Computer*/
  //Rock   -- Scissor
  //Scissor -- Paper
  //Paper   -- Rock
  bool isWin(int player, int computer) {
    if ((player == AppConstants.ROCK && computer == AppConstants.SCISSOR) ||
        (player == AppConstants.SCISSOR && computer == AppConstants.PAPER) ||
        (player == AppConstants.PAPER && computer == AppConstants.ROCK)) {
      return true;
    } else {
      return false;
    }
  }
}
