// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rps_game_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RPSGameStore on _RPSGameStore, Store {
  Computed<String>? _$computerChoiceImageComputed;

  @override
  String get computerChoiceImage => (_$computerChoiceImageComputed ??=
          Computed<String>(() => super.computerChoiceImage,
              name: '_RPSGameStore.computerChoiceImage'))
      .value;
  Computed<int>? _$totalScoreComputed;

  @override
  int get totalScore =>
      (_$totalScoreComputed ??= Computed<int>(() => super.totalScore,
              name: '_RPSGameStore.totalScore'))
          .value;

  late final _$playerScoreAtom =
      Atom(name: '_RPSGameStore.playerScore', context: context);

  @override
  int get playerScore {
    _$playerScoreAtom.reportRead();
    return super.playerScore;
  }

  @override
  set playerScore(int value) {
    _$playerScoreAtom.reportWrite(value, super.playerScore, () {
      super.playerScore = value;
    });
  }

  late final _$computerScoreAtom =
      Atom(name: '_RPSGameStore.computerScore', context: context);

  @override
  int get computerScore {
    _$computerScoreAtom.reportRead();
    return super.computerScore;
  }

  @override
  set computerScore(int value) {
    _$computerScoreAtom.reportWrite(value, super.computerScore, () {
      super.computerScore = value;
    });
  }

  late final _$playerChoiceAtom =
      Atom(name: '_RPSGameStore.playerChoice', context: context);

  @override
  int get playerChoice {
    _$playerChoiceAtom.reportRead();
    return super.playerChoice;
  }

  @override
  set playerChoice(int value) {
    _$playerChoiceAtom.reportWrite(value, super.playerChoice, () {
      super.playerChoice = value;
    });
  }

  late final _$computerChoiceAtom =
      Atom(name: '_RPSGameStore.computerChoice', context: context);

  @override
  int get computerChoice {
    _$computerChoiceAtom.reportRead();
    return super.computerChoice;
  }

  @override
  set computerChoice(int value) {
    _$computerChoiceAtom.reportWrite(value, super.computerChoice, () {
      super.computerChoice = value;
    });
  }

  late final _$equalChoicesAtom =
      Atom(name: '_RPSGameStore.equalChoices', context: context);

  @override
  bool get equalChoices {
    _$equalChoicesAtom.reportRead();
    return super.equalChoices;
  }

  @override
  set equalChoices(bool value) {
    _$equalChoicesAtom.reportWrite(value, super.equalChoices, () {
      super.equalChoices = value;
    });
  }

  late final _$_RPSGameStoreActionController =
      ActionController(name: '_RPSGameStore', context: context);

  @override
  void resetGame() {
    final _$actionInfo = _$_RPSGameStoreActionController.startAction(
        name: '_RPSGameStore.resetGame');
    try {
      return super.resetGame();
    } finally {
      _$_RPSGameStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void playComputer() {
    final _$actionInfo = _$_RPSGameStoreActionController.startAction(
        name: '_RPSGameStore.playComputer');
    try {
      return super.playComputer();
    } finally {
      _$_RPSGameStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
playerScore: ${playerScore},
computerScore: ${computerScore},
playerChoice: ${playerChoice},
computerChoice: ${computerChoice},
equalChoices: ${equalChoices},
computerChoiceImage: ${computerChoiceImage},
totalScore: ${totalScore}
    ''';
  }
}
