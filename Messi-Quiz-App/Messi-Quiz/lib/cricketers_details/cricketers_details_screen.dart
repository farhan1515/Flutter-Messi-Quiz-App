import 'package:flutter/material.dart';

class cricketersDetails extends StatefulWidget {
  const cricketersDetails({Key? key}) : super(key: key);

  @override
  State<cricketersDetails> createState() => _cricketersDetailsState();
}

class _cricketersDetailsState extends State<cricketersDetails> {
  int numberofmatchplayed = 0;
  int age = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    numberofmatchplayed = 330;
    age = 2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 236, 243),
      appBar: AppBar(
        title: Text("Cricketers Details"),
        centerTitle: true,
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Image.asset(
              "assets/images/cat.jpeg",
              height: 150,
              width: 300,
            ),
            Divider(height: 30, thickness: 2, color: Colors.black87),
            const Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                "Name",
                style: TextStyle(
                    color: Color.fromARGB(255, 11, 207, 18),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2.5),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Dhoni",
              style: TextStyle(
                  color: Colors.red,
                  backgroundColor: Colors.white70,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.7),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "AGE",
                style: TextStyle(
                    color: Color.fromARGB(255, 11, 207, 18),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 1.7),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "$age",
              style: const TextStyle(
                  color: Color.fromARGB(255, 95, 54, 244),
                  backgroundColor: Colors.white70,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.7),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "MATCHES PLAYED",
                style: TextStyle(
                    color: Color.fromARGB(255, 11, 207, 18),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2.5),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "$numberofmatchplayed",
                style: const TextStyle(
                    color: Colors.black45,
                    backgroundColor: Colors.white70,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.7),
              ),
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            numberofmatchplayed = numberofmatchplayed + 1;
            age = age + 1;
          });
        },
        backgroundColor: Colors.yellow,
        child: Icon(Icons.add),
      ),
    );
  }
}
