import 'package:flutter/material.dart';
import 'package:youtbe_2/const/colors.dart';
import 'package:youtbe_2/views/game_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //text
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 22),
              child: Text(
                "Welcome to the BANANA Games",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            //buttons
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GameScreen()));
                },
                child: Text(
                  "Go to Game Screen",
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
