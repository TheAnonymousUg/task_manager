import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Manage Your Tasks',
          body:
              'You can easily manage all of your daily tasks in DoMe for free',
          image: buildImage('assets/intro1.png'),
          decoration: getDecoration(),
        ),
        PageViewModel(
          title: 'Create daily routine',
          body:
              'In DefaultsTodo you can create your personalized routine to stay productive',
          image: buildImage('assets/intro2.png'),
          decoration: getDecoration(),
        ),
        PageViewModel(
          title: 'Organize your tasks',
          body:
              'You can organize your daily tasks by adding your tasks into separate categories',
          image: buildImage('assets/intro3.png'),
          decoration: getDecoration(),
        )
      ],
      done: Text('Get Started', style: GoogleFonts.roboto()),
      onDone: () {},
      showNextButton: false,
    );
  }
}

Widget buildImage(String path) {
  return Center(
      child: Image.asset(
    path,
    width: 400,
  ));
}

PageDecoration getDecoration() {
  return PageDecoration(
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodyTextStyle: GoogleFonts.poppins(fontSize: 20),
      imagePadding: const EdgeInsets.only(top: 80));
}
