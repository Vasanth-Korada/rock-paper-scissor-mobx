import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:rps_mobx/store/rps_game_store.dart';
import 'package:rps_mobx/widgets/game_area.dart';
import 'package:rps_mobx/widgets/reset_game.dart';
import 'package:rps_mobx/widgets/score_card.dart';
import 'package:provider/provider.dart';

class RPSGameScreen extends StatefulWidget {
  const RPSGameScreen({super.key});

  @override
  State<RPSGameScreen> createState() => _RPSGameScreenState();
}

class _RPSGameScreenState extends State<RPSGameScreen> {
  List<ReactionDisposer>? _disposers;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final gameStore = Provider.of<RPSGameStore>(context);
    _disposers ??= [
      autorun((_) {
        if (gameStore.equalChoices == true) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("Draw"),
            duration: Duration(milliseconds: 400),
          ));
        }
      })
    ];
  }

  @override
  void dispose() {
    _disposers?.forEach((d) {
      d();
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final gameStore = Provider.of<RPSGameStore>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("ROCK PAPER SCISSOR"),
        elevation: 0,
        backgroundColor: Colors.indigo.shade500,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 48),
        child: Column(
          children: const [
            ScoreCardWidget(),
            GameAreaWidget(),
          ],
        ),
      ),
      bottomNavigationBar: const ResetGameWidget(),
    );
  }
}
