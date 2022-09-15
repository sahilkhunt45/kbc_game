import 'package:flutter/material.dart';
import 'package:kbc/loser.dart';
import 'package:kbc/page1.dart';
import 'package:kbc/winner.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'page1',
      routes: {
        'page1': (context) => const Homepage(),
        'win': (context) => const Win(),
        'lose': (context) => const Lose(),
      },
    ),
  );
}
