// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'Words.dart';

class GamePage extends StatefulWidget {
  GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.yellow,
      child: Column(
        children: [
          Container(
            color: Colors.blue.shade400,
            width: double.maxFinite,
            height: height * 0.2,
          ),
          Container(
            width: double.maxFinite,
            height: height * 0.58,
            color: Colors.blue.shade300,
            padding: EdgeInsets.all(8),
            child: GridView.builder(
              itemCount: 64,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 8,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  childAspectRatio: 1.1),
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.yellow,
                  margin: EdgeInsets.all(2),
                );
              },
            ),
          ),
          Container(
            width: double.maxFinite,
            height: height * 0.22,
            color: Colors.blue.shade200,
          ),
        ],
      ),
    );
  }
}
