import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
              titleWidget: Text(
                "Write Title of Page",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              body:
                  "Write a more descriptive text of the page. Never gonna give you up. Never gonna let you down.",
              image: Image.asset(
                "images/step-one.png",
                height: 400,
                width: 400,
              )),
          PageViewModel(
              titleWidget: Text(
                "Write Title of Page",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              body:
                  "Write a more descriptive text of the page. Never gonna give you up. Never gonna let you down.",
              image: Image.asset(
                "images/step-two.png",
                height: 400,
                width: 400,
              )),
          PageViewModel(
              titleWidget: Text(
                "Write Title of Page",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              body:
                  "Write a more descriptive text of the page. Never gonna give you up. Never gonna let you down.",
              image: Image.asset(
                "images/step-three.png",
                height: 400,
                width: 400,
              )),
        ],
        onDone: () {
          Navigator.pushNamed(context, "home");
        },
        onSkip: () {
          Navigator.pushNamed(context, "home");
        },
        showSkipButton: true,
        skip: Text(
          "Skip",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xFF6C63ff),
          ),
        ),
        next: Icon(Icons.arrow_forward, color: Color(0xFF6C63ff)),
        done: Text(
          "Done",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xFF6C63ff),
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: Size.square(10),
          activeSize: Size(20, 10),
          color: Colors.black,
          activeColor: Color(0xFF6C63ff),
          spacing: EdgeInsets.symmetric(horizontal: 3),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}
