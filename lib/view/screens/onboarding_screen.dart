import 'package:coinmarketcup_ui_flutter/data/onboarding_list.dart';
import 'package:coinmarketcup_ui_flutter/view/screens/init_screen.dart';
import 'package:coinmarketcup_ui_flutter/view/screens/markets_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardignScreen extends StatelessWidget {
  const OnboardignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 90),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 500,
                  child: IntroductionScreen(
                    globalBackgroundColor: Colors.white,
                    pages: listPagesViewModel,
                    onDone: () {
                      // When done button is press
                    },
                    onSkip: () {
                      // You can also override onSkip callback
                    },
                    showBackButton: false,
                    // showSkipButton: true,
                    showNextButton: false,
                    skip: const Icon(Icons.skip_next),
                    next: const Icon(Icons.navigate_next),
                    showDoneButton: false,
                    // done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
                    dotsDecorator: DotsDecorator(
                        size: const Size.square(10.0),
                        activeSize: const Size(10.0, 10.0),
                        activeColor: Colors.blueAccent,
                        color: Colors.black26,
                        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0))),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        width: MediaQuery.of(context).size.width / 4,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Log in',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent.shade200,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Create account',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25,),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const InitScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Go to main',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black38,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
