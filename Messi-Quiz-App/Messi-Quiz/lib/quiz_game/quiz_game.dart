// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/quiz_game/models/quiz_model.dart';
import 'package:flutter_tutorial/quiz_game/quiz_game_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizGameScren extends StatefulWidget {
  const QuizGameScren({Key? key}) : super(key: key);

  @override
  State<QuizGameScren> createState() => _QuizGameScrenState();
}

class _QuizGameScrenState extends State<QuizGameScren> {
  List quizlist = [quiz1, quiz2, quiz3, quiz4,quiz5,quiz6,quiz7,quiz8,quiz9,quiz10];
  quizmodel currentquiz = quiz1;
  int currentquizindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/ball.jpg"),
                    fit: BoxFit.cover)),
            child: titleview(context)));
  }

  Padding titleview(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: Column(children: [
          Text("MESSI QUIZ",
              style: GoogleFonts.fredokaOne(
                  color: Colors.white,
                  fontSize: 70,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          quizview2(context)
        ]));
  }

  Padding quizview2(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
      child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.yellow.withOpacity(0.4),
              borderRadius: BorderRadius.circular(30)),
          child: quizview(context)),
    );
  }

  Padding quizview(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Text(currentquiz.question,
              style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          optionlist(context),
        ],
      ),
    );
  }

  optiontaped(int index) {
    if (currentquiz.answer == index) {
      setState(() {
        if (currentquizindex < (quizlist.length - 1)) {
          currentquizindex = currentquizindex + 1;
          currentquiz = quizlist[currentquizindex];
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => quizwelcomescreen(quiztitle: "DRIBBLE LIKE MESSI",quizbuttontext: "PLAY AGAIN",)),
          );
        }
        ;
      });
    }
  }

  Container optionlist(context) {
    return Container(
      height: 292,
      padding: EdgeInsets.only(top: 5),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: currentquiz.optionslist.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: GestureDetector(
                  onTap: () => optiontaped(index),
                  child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black, width: 1)),
                      child: Text(
                        currentquiz.optionslist[index],
                        style: GoogleFonts.fredokaOne(
                            color: Colors.black,
                            fontSize: 18,
                            letterSpacing: 2.0),
                        textAlign: TextAlign.center,
                      )),
                ));
          }),
    );
  }
}
