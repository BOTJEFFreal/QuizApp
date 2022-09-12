import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quizappv1/questionModel/QuestionBank.dart';
import 'NavDrawer.dart';

QuestionBank questionBank = QuestionBank();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int questionNumber = 1;
  bool _colorchange_button1 = false;
  bool _colorchange_button2 = false;
  bool _colorchange_button3 = false;
  bool _colorchange_button4 = false;
  int _selected = 0;

  void _incrementCounter() {
    setState(() {
      if (questionBank.questionBank[questionNumber].answered == 1) {
        print(_colorchange_button1);
        _colorchange_button1 = true;
      } else if (questionBank.questionBank[questionNumber].answered == 2) {
        print(_colorchange_button2);
        _colorchange_button2 = true;
      } else if (questionBank.questionBank[questionNumber].answered == 3) {
        print(_colorchange_button3);
        _colorchange_button3 = true;
      } else if (questionBank.questionBank[questionNumber].answered == 4) {
        print(_colorchange_button4);
        _colorchange_button4 = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //_incrementCounter();
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: const Text('JEE Mains'),
        actions: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Center(
              child: Text(
                "00:00:00",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {},
                child: Text("Submit"),
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all(Colors.blueAccent),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                            side: BorderSide(color: Colors.blueAccent))))),
          ),
        ],
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: 40,
            color: Colors.blue[800],
            child: Text(
              "Q$questionNumber. Single Choice Question",
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.white),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(top: 16, left: 12, right: 12, bottom: 8),
            child: Text(
              questionBank.questionBank[questionNumber - 1].question,
              style: const TextStyle(
                  fontFamily: 'Roboto', fontSize: 15, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Divider(height: 0, thickness: 5, color: Colors.grey[500]),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _colorchange_button1 = true;
                _colorchange_button2 = false;
                _colorchange_button3 = false;
                _colorchange_button4 = false;

                _selected = 1;
              });
            },
            style: ElevatedButton.styleFrom(
              primary: _colorchange_button1
                  ? Colors.white70
                  : Colors.teal, // This is what you need!
            ),
            child: Container(
              child: Row(
                children: [
                  const Text(
                    "A",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                      questionBank.questionBank[questionNumber - 1].options[0]),
                ],
              ),
            ),
          ),
          //Divider(height: 0, thickness: 1, color: Colors.grey[500]),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _colorchange_button1 = false;
                _colorchange_button2 = true;
                _colorchange_button3 = false;
                _colorchange_button4 = false;

                _selected = 2;
              });
            },
            style: ElevatedButton.styleFrom(
              primary: _colorchange_button2
                  ? Colors.white70
                  : Colors.teal, // This is what you need!
            ),
            child: Container(
              child: Row(
                children: [
                  Text(
                    "B",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                      questionBank.questionBank[questionNumber - 1].options[1]),
                ],
              ),
            ),
          ),
          //Divider(height: 0, thickness: 1, color: Colors.grey[500]),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _colorchange_button1 = false;
                _colorchange_button2 = false;
                _colorchange_button3 = true;
                _colorchange_button4 = false;

                _selected = 3;
              });
            },
            style: ElevatedButton.styleFrom(
              primary: _colorchange_button3
                  ? Colors.white70
                  : Colors.teal, // This is what you need!
            ),
            child: Container(
              child: Row(
                children: [
                  Text(
                    "C",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                      questionBank.questionBank[questionNumber - 1].options[2]),
                ],
              ),
            ),
          ),
          //Divider(height: 0, thickness: 1, color: Colors.grey[500]),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _colorchange_button1 = false;
                _colorchange_button2 = false;
                _colorchange_button3 = false;
                _colorchange_button4 = true;

                _selected = 4;
              });
            },
            style: ElevatedButton.styleFrom(
              primary: _colorchange_button4
                  ? Colors.white70
                  : Colors.teal, // This is what you need!
            ),
            child: Container(
              child: Row(
                children: [
                  const Text(
                    "D",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                      questionBank.questionBank[questionNumber - 1].options[3]),
                ],
              ),
            ),
          ),
          Divider(height: 5, thickness: 5, color: Colors.grey[500]),
          //Bottom part
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 40,
                color: Colors.grey[200],
                child: Row(
                  children: [
                    Expanded(
                      child: RawMaterialButton(
                        onPressed: () {
                          if (questionNumber <= 1) {
                          } else {
                            setState(() {
                              questionNumber -= 1;

                              _colorchange_button1 = false;
                              _colorchange_button2 = false;
                              _colorchange_button3 = false;
                              _colorchange_button4 = false;
                            });
                          }
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: const Center(
                          child: Icon(
                            Icons.arrow_back_ios_new,
                          ),
                        ),
                        shape: CircleBorder(),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: RawMaterialButton(
                        onPressed: () {
                          setState(() {
                            _colorchange_button1 = false;
                            _colorchange_button2 = false;
                            _colorchange_button3 = false;
                            _colorchange_button4 = false;
                            questionBank.questionBank[questionNumber].answered =
                                0;

                            questionBank.questionBank[questionNumber].condition =
                            "Not Answered";
                          });
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text(
                          "Clear",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      flex: 2,
                      child: RawMaterialButton(
                        onPressed: () {
                          setState(() {
                            if (questionNumber <
                                questionBank.questionBank.length) {
                              questionNumber += 1;
                            } else {}
                            questionBank.questionBank[questionNumber].answered =
                                _selected;
                            questionBank.questionBank[questionNumber].condition =
                                "Answered";
                          });
                          _colorchange_button1 = false;
                          _colorchange_button2 = false;
                          _colorchange_button3 = false;
                          _colorchange_button4 = false;
                          print(questionBank.questionBank[questionNumber]);
                        },
                        elevation: 2.0,
                        fillColor: Colors.blue[800],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text(
                          "Save and Next",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    Expanded(
                      child: RawMaterialButton(
                        onPressed: () {
                          setState(() {
                            if (questionNumber <
                                questionBank.questionBank.length) {
                              questionNumber += 1;
                            } else {}
                            _colorchange_button1 = false;
                            _colorchange_button2 = false;
                            _colorchange_button3 = false;
                            _colorchange_button4 = false;

                            questionBank.questionBank[questionNumber].condition =
                            "Not Answered";
                          });
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        shape: const CircleBorder(),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
