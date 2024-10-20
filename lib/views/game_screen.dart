import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtbe_2/const/colors.dart';
import 'package:youtbe_2/data/banana_provider.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BananaProvider>(builder: (context, value, child) {
      return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //text
                Text(
                  value.counter.toString(),
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: colorWhite),
                ),
                //image
                GestureDetector(
                  onTap: value.counterRise,
                  child: Image.asset(
                    "assets/banana.png",
                    width: 250,
                    height: 250,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
