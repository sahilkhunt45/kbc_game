import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

// ignore: non_constant_identifier_names
int Ruppe = 250;

int win = 250;

class _HomepageState extends State<Homepage> {
  // ignore: non_constant_identifier_names
  int Index = 0;
  @override
  Widget build(BuildContext context) {
    TextStyle questionStyle = const TextStyle(
      color: Colors.black,
      fontSize: 22,
      fontWeight: FontWeight.bold,
    );
    List<Map> questionBank = [
      {
        'id': 1,
        'question': '1.How many planets in solar system?',
        'A': '9',
        'B': '8',
        'C': '6',
        'D': '5',
        'answer': 'A',
        'bgColor': Colors.pink,
      },
      {
        'id': 2,
        'question': '2.How many national park in india ?',
        'A': '291',
        'B': '300',
        'C': '100',
        'D': '299',
        'answer': 'D',
        'bgColor': Colors.orange,
      },
      {
        'id': 3,
        'question': '3.who is the real God of Cricket ?',
        'A': 'sachin',
        'B': 'virat',
        'C': 'dhoni',
        'D': 'smithh',
        'answer': 'B',
        'bgColor': Colors.blueAccent,
      },
      {
        'id': 4,
        'question': '4.How many ipl Team in 2022?',
        'A': '10',
        'B': '13',
        'C': '11',
        'D': '12',
        'answer': 'A',
        'bgColor': Colors.blueGrey,
      },
      {
        'id': 5,
        'question': "5.Which Cricketer nike name is chiku?",
        'A': 'virat',
        'B': 'smith',
        'C': 'dhavan',
        'D': 'rahul',
        'answer': 'A',
        'bgColor': Colors.green,
      },
      {
        'id': 6,
        'question': "6.Now,Hardik pandya is Captain of______",
        'A': 'GT',
        'B': 'MI',
        'C': 'PBSK',
        'D': 'RCB',
        'answer': 'A',
        'bgColor': Colors.yellowAccent,
      },
      {
        'id': 7,
        'question': "7.Now,India's new Captain is_______? ",
        'A': 'Kishan',
        'B': 'Rohit',
        'C': 'Rahul',
        'D': 'virat',
        'answer': 'B',
        'bgColor': Colors.redAccent,
      },
      {
        'id': 8,
        'question': "8.Full form of RR ? ",
        'A': 'Rajasthann Ravan',
        'B': 'Rajasthan Real',
        'C': 'Rajasthan Royals',
        'D': 'Rajasthan Roar',
        'answer': 'C',
        'bgColor': Colors.pink,
      },
      {
        'id': 9,
        'question': "9.What was Gandhiji's birthdate? ",
        'A': '1 october',
        'B': '2 may',
        'C': '3 april',
        'D': '2 october',
        'answer': 'D',
        'bgColor': Colors.lightBlue,
      },
      {
        'id': 10,
        'question': "10.Currently,No.1 T20 Team is_______? ",
        'A': 'India',
        'B': 'Pakistan',
        'C': 'England',
        'D': 'USA',
        'answer': 'A',
        'bgColor': Colors.indigo,
      },
    ];
    return Scaffold(
      body: Container(
        child: (Index < questionBank.length)
            ? IndexedStack(
                index: Index,
                children: questionBank.map((e) {
                  return Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(top: 140),
                          color: e['bgColor'],
                          child: Text(
                            e['question'],
                            style: questionStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          width: double.infinity,
                          color: Colors.black,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 50, left: 15),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          //Index++;

                                          if (e['answer'] == 'A') {
                                            Navigator.of(context)
                                                .pushNamed('win');
                                            Index++;
                                            Ruppe = Ruppe * 2;
                                          } else if (e['answer'] == 'B') {
                                            Navigator.of(context)
                                                .pushNamed('lose');
                                            Index = 0;
                                          } else if (e['answer'] == 'C') {
                                            Navigator.of(context)
                                                .pushNamed('lose');
                                            Index = 0;
                                          } else if (e['answer'] == 'D') {
                                            Navigator.of(context)
                                                .pushNamed('lose');
                                            Index = 0;
                                          }
                                        });
                                      },
                                      child: Text(
                                        e['A'],
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        onPrimary: const Color(0xffa8a8a9),
                                        primary: const Color(0xff1e1f23),
                                        minimumSize: const Size(175, 70),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 50, left: 15),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          //Index++;
                                          if (e['answer'] == 'B') {
                                            Navigator.of(context)
                                                .pushNamed('win');
                                            Index++;
                                            Ruppe = Ruppe * 2;
                                          } else if (e['answer'] == 'A') {
                                            Navigator.of(context)
                                                .pushNamed('lose');
                                            Index = 0;
                                          } else if (e['answer'] == 'C') {
                                            Navigator.of(context)
                                                .pushNamed('lose');
                                            Index = 0;
                                          } else if (e['answer'] == 'D') {
                                            Navigator.of(context)
                                                .pushNamed('lose');
                                            Index = 0;
                                          }
                                        });
                                      },
                                      child: Text(e['B']),
                                      style: ElevatedButton.styleFrom(
                                        onPrimary: const Color(0xffa8a8a9),
                                        primary: const Color(0xff1e1f23),
                                        minimumSize: const Size(175, 70),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 50, left: 15),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          //Index++;
                                          if (e['answer'] == 'C') {
                                            Navigator.of(context)
                                                .pushNamed('win');
                                            Index++;
                                            Ruppe = Ruppe * 2;
                                          } else if (e['answer'] == 'B') {
                                            Navigator.of(context)
                                                .pushNamed('lose');
                                            Index = 0;
                                          } else if (e['answer'] == 'A') {
                                            Navigator.of(context)
                                                .pushNamed('lose');
                                            Index = 0;
                                          } else if (e['answer'] == 'D') {
                                            Navigator.of(context)
                                                .pushNamed('lose');
                                            Index = 0;
                                          }
                                        });
                                      },
                                      child: Text(e['C']),
                                      style: ElevatedButton.styleFrom(
                                        onPrimary: const Color(0xffa8a8a9),
                                        primary: const Color(0xff1e1f23),
                                        minimumSize: const Size(175, 70),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 50, left: 15),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          //Index++;
                                          if (e['answer'] == 'D') {
                                            Navigator.of(context)
                                                .pushNamed('win');
                                            Index++;
                                            Ruppe = Ruppe * 2;
                                          } else if (e['answer'] == 'B') {
                                            Navigator.of(context)
                                                .pushNamed('lose');
                                            Index = 0;
                                          } else if (e['answer'] == 'C') {
                                            Navigator.of(context)
                                                .pushNamed('lose');
                                            Index = 0;
                                          } else if (e['answer'] == 'A') {
                                            Navigator.of(context)
                                                .pushNamed('lose');
                                            Index = 0;
                                          }
                                        });
                                      },
                                      child: Text(e['D']),
                                      style: ElevatedButton.styleFrom(
                                        onPrimary: const Color(0xffa8a8a9),
                                        primary: const Color(0xff1e1f23),
                                        minimumSize: const Size(175, 70),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList(),
              )
            : Container(
                color: Colors.black,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 150),
                      height: 250,
                      width: double.infinity,
                      child: const Image(
                        image: AssetImage(
                          'assets/images/win.png',
                        ),
                      ),
                    ),
                    const Text(
                      "Congratulation",
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff5b5f62),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "GAME OVER",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Index = 0;
                          Ruppe = win;
                        });
                      },
                      child: const Text("Restart"),
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.white,
                        primary: const Color(0xff1e1f23),
                        minimumSize: const Size(230, 70),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
