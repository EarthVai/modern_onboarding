import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);
  final List<PageViewModel> pages = [
    PageViewModel(
      
      title: 'Do you believe in love at first bite?',
      body: 'Or shall I feed you again?',
      
      image: Center(
        child: SizedBox(
          width: 600, // Set your desired width
          height: 800, // Set your desired height
          child: Image.asset(
            'assets/images/rob1.jpg',
            fit: BoxFit.cover, // Adjust as needed (cover, contain, etc.)
          ),
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          //fontFamily: 'BalooPaaji2',
        ),
         contentMargin: EdgeInsets.only(top: 100.0), // Adjust the top margin as needed
      ), 
    ),


    PageViewModel(
      title: 'Dont worry be Belly',
      body: 'Sprinkles make everything better !',
      image: Center(
        child: SizedBox(
          // width: 400, // Set your desired width
          // height: 800, // Set your desired height
          child: Image.asset(
            'assets/images/cake3.jpg',
            fit: BoxFit.cover, // Adjust as needed (cover, contain, etc.)
          ),
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
        contentMargin: EdgeInsets.only(top: 100.0),
         
      ),
    ),


    PageViewModel(
      title: 'You are 911 for your Craving !',
      body: 'Ready, set, cake! Let’s order!',

      image: Center(
        child: SizedBox(
          // width: 600, 
          // height: 800, 
          child: Image.asset(
            'assets/images/cake4.jpg',
            fit: BoxFit.cover, // Adjust as needed (cover, contain, etc.)
          ),
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
        contentMargin: EdgeInsets.only(top: 100.0), // Adjust the top margin as needed
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 80, 12, 12),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(15, 15),
            color: Colors.transparent,
            activeSize: Size.square(20),
            activeColor: Colors.white,
          ),
          showDoneButton: true,
          done: const Text(
            'Done',
            style: TextStyle(fontSize: 20),
          ),
          showSkipButton: true,
          skip: const Text(
            'Skip',
            style: TextStyle(fontSize: 20),
          ),
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward,
            size: 25,
          ),
          onDone: () => onDone(context),
          curve: Curves.bounceOut,
        ),
      ),
    );
  }
}

//go to login
void onDone(context) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('ON_BOARDING', false);
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => const HomeScreen()));
}
