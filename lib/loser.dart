import 'package:flutter/material.dart';
import 'package:kbc/page1.dart';

class Lose extends StatefulWidget {
  const Lose({Key? key}) : super(key: key);

  @override
  State<Lose> createState() => _LoseState();
}

class _LoseState extends State<Lose> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.black,
                margin: const EdgeInsets.only(top: 200),
                height: 150,
                width: double.infinity,
                child: const Image(
                  image: AssetImage(
                    'assets/images/lose.png',
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "OPPS!",
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xffd4d4ff),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Sorry Please Try Again ",
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xffd4d4ff),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).pop('');
                    Ruppe = win;
                  });
                },
                child: const Text("Try Again"),
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
