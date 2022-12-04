import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_app/screens/mobile/mobilescreen.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  bool isReady = false;

  void changeIsReady() async {
    await Future.delayed(const Duration(seconds: 3));

    setState(() {
      isReady = true;
    });
  }

  @override
  void initState() {
    changeIsReady();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isReady
          ? const MobileScreen()
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/page1.png'),
                    Text(
                      'DefaultsTodo',
                      style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF081336),
                      ),
                    )
                  ],
                ),
              ],
            ),
    );
  }
}
