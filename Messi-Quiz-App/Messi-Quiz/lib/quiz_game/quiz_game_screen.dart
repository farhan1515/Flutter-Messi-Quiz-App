import 'package:flutter/material.dart';
import 'package:flutter_tutorial/quiz_game/quiz_game.dart';
import 'package:google_fonts/google_fonts.dart';

class quizwelcomescreen extends StatelessWidget {
  final String quiztitle;
  final String quizbuttontext;
  const quizwelcomescreen(
      {Key? key, required this.quiztitle, required this.quizbuttontext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/messi.jpg"),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 320, 20, 100),
          child: Column(children: [
            Text(quiztitle,
                style: GoogleFonts.fredokaOne(
                    color: Colors.white,
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                          color: Colors.black,
                          offset: Offset(4, 4),
                          blurRadius: 4),
                    ]),
                textAlign: TextAlign.center),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 110),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuizGameScren()));
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(quizbuttontext),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  primary: Colors.yellow.withOpacity(0.9),
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  textStyle: GoogleFonts.fredokaOne(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 2.0),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
