// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'gamepage.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade500,
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 32),
                ),
                onPressed: () {
                  print('Pressed');
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => GamePage()),
                  );
                },
                child: const Text('OYUNA BAŞLA'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}