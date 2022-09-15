import 'package:flutter/material.dart';

class Win extends StatefulWidget {
  const Win({Key? key}) : super(key: key);

  @override
  State<Win> createState() => _WinState();
}

class _WinState extends State<Win> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 150),
              height: 250,
              width: double.infinity,
              child: Image(
                image: AssetImage(
                  'images/win.png',
                ),
              ),
            ),
            Text(
              "Congratulation",
              style: TextStyle(
                fontSize: 25,
                color: Color(0xff5b5f62),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Your Answer Is Correct",
              style: TextStyle(
                fontSize: 25,
                color: Color(0xffc78640),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {

                });
              },
              child: Text("Next"),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: Color(0xff1e1f23),
                minimumSize: Size(230, 70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
