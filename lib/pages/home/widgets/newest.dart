import 'package:flutter/material.dart';

import '../../../models/game.dart';

class NewestGame extends StatelessWidget {
  NewestGame({super.key});

  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 205,
      //color: Colors.red,
      padding: const EdgeInsets.all(25),
      child: Column(
        children: games
            .map((game) => Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        game.icon,
                        width: 60,
                      ),
                    ),
                    Text(game.name),
                  ],
                ))
            .toList(),
      ),
    );
  }
}
