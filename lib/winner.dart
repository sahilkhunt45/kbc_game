import 'package:flutter/material.dart';
import 'package:kbc/page1.dart';

class Win extends StatefulWidget {
  const Win({Key? key}) : super(key: key);

  @override
  State<Win> createState() => _WinState();
}

class _WinState extends State<Win> {
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
                margin: const EdgeInsets.only(top: 200),
                height: 150,
                width: double.infinity,
                child: const Image(
                  image: AssetImage(
                    'assets/images/win.png',
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Your Answer Is Correct",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.pink,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "You Won",
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xffc78640),
                ),
              ),
              Text(
                "$Ruppe ₹",
                style: const TextStyle(
                  fontSize: 25,
                  color: Color(0xffc78640),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).pop('/');
                  });
                },
                child: const Text("Next"),
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
