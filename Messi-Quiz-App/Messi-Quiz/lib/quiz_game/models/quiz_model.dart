import 'package:flutter_tutorial/quiz_game/quiz_game.dart';

class quizmodel {
  String question;
  List<String> optionslist;
  int answer;
  quizmodel(this.question, this.optionslist, this.answer);
}

quizmodel quiz1 = quizmodel(
    "Messi D.O.B", ["15/06/1987", "30/06/1988", "24/06/1987", "24/06/1988"], 2);
quizmodel quiz2 = quizmodel(
    "MESSI was dagonised with", ["Conjuctivities", "GMD", "GCD", "RIBBS"], 1);
quizmodel quiz3 =
    quizmodel("How many ballon d'or messi have", ["4", "6", "8", "7"], 2);
quizmodel quiz4 =
    quizmodel("Messi first jersey number", ["10", "20", "30", "7"], 2);
quizmodel quiz5 =
    quizmodel("At what age messi joined barca", ['12', '13', '17', '15'], 1);
quizmodel quiz6 =
    quizmodel("MESSI'S NICKNAME", ["ANDREW", "FLEA", "MOSS", "LA PULGA"], 3);
quizmodel quiz7 = quizmodel("MESSI HEIGHT", ["5.7", "5.6", "5.4", "5.3"], 0);
quizmodel quiz8 =
    quizmodel("Messi total goals for Argentina", ["91", "83", "88", "90"], 2);
quizmodel quiz9 =
    quizmodel("Total career goals", ["773", "798", "775", "791"], 0);
quizmodel quiz10 =
    quizmodel("Messi is Goat", ["YES", "OFCOURSE", "ALIEN", "LEGEND"], 2);
 