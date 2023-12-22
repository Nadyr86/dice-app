import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  int solNomer = 1;
  int onNomer = 5;
  Random random = Random();

  void ozgort() {
    setState(() {});
    solNomer = random.nextInt(6) + 1;
    onNomer = random.nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF5353),
      appBar: AppBar(
        backgroundColor: const Color(0xffFF5353),
        title: Text(
          'Dice app'.toUpperCase(),
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: ozgort,
                  child: Image.asset(
                    'assets/images/dice_$onNomer.png',
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Expanded(
                  child: InkWell(
                onTap: () {
                  ozgort();
                },
                child: Image.asset(
                  'assets/images/dice_$solNomer.png',
                  color: Colors.white,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
