import 'package:flutter/material.dart';
import 'package:rps_mobx/screens/rps_game_screen.dart';
import 'package:rps_mobx/store/rps_game_store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const DevFestApp());
}

class DevFestApp extends StatelessWidget {
  const DevFestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider<RPSGameStore>(create: (_) => RPSGameStore())],
      child: MaterialApp(
        title: 'DevFest - Rock Paper Scissor',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.indigo,
            bottomAppBarTheme: const BottomAppBarTheme(
              color: Colors.indigo,
            ),
            scaffoldBackgroundColor: Colors.indigo.shade100),
        home: const RPSGameScreen(),
      ),
    );
  }
}
