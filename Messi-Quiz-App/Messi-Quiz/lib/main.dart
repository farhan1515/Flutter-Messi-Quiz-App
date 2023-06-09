import 'package:flutter/material.dart';
import 'package:flutter_tutorial/cricketers_details/cricketers_details_screen.dart';
import 'package:flutter_tutorial/quiz_game/quiz_game_screen.dart';
import 'package:flutter_tutorial/quiz_game/quiz_game.dart';

void main() {
  runApp(MaterialApp(
    //home: cricketersDetails(),
    home: quizwelcomescreen(quiztitle: "MESSI IS GOAT",quizbuttontext: "PLAY FOOTBALL",),
  ));
}
//statlesswidget-if data is not changing much
//statefullwidget-if data is changing continously

