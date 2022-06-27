import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(height: 100,),
              SizedBox(
                height: 250,
                child: Lottie.network(
                  'https://assets2.lottiefiles.com/packages/lf20_2omr5gpu.json',
                  width: 250,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                width: 200,
                child: Text(
                  'Start Tracking Your Crypto Portfolio',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                width: 300,
                child: Text(
                  'Our tools is the easiest way to find, track and manage your crypto investments.',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 25,
                ),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  'Create an Account',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 25,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  'Log in',
                  style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
