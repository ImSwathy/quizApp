import 'dart:ui';

import 'package:flutter/material.dart';

import '../../main.dart';
import '../widgets/hud.dart';
import '../game/dino_run.dart';

// This represents the main menu overlay.
class InstructionDinoHead extends StatelessWidget {
  // An unique identified for this overlay.
  static const id = 'MainMenu';

  // Reference to parent game.
  final DinoRun gameRef;

  const InstructionDinoHead(this.gameRef, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.black.withAlpha(100),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
              child: Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 10,
                children: [
                  const Text(
                    'Instructions',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "To make the dino jump, simply turn your face upwards.\nKeep an eye on the obstacles and time your jumps carefully\nto avoid them. Good luck and enjoy the dino run!",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // gameRef.startGamePlay();
                      gameRef.overlays.remove('InstructionDino');
                      gameRef.overlays.add('Sensitivity');
                      // gameRef.overlays.add(Hud.id);
                      // changer.isGamePaused = false;
                      // changer.notify();
                    },
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
