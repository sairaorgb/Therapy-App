import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart'; // Add confetti package

class CompletionPage extends StatefulWidget {
  CompletionPage({super.key});

  @override
  _CompletionPageState createState() => _CompletionPageState();
}

class _CompletionPageState extends State<CompletionPage> {
  late ConfettiController _controllerCenter; // Confetti controller

  @override
  void initState() {
    super.initState();
    _controllerCenter =
        ConfettiController(duration: const Duration(seconds: 10));
    _controllerCenter.play();
  }

  @override
  void dispose() {
    _controllerCenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2), // Light Gray background
      body: Stack(
        children: [
          // Confetti animation
          Align(
            alignment: Alignment.center,
            child: ConfettiWidget(
              confettiController: _controllerCenter,
              blastDirectionality: BlastDirectionality.explosive,
              emissionFrequency: 0.1,
              numberOfParticles: 20,
              gravity: 0.1,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_circle_outline,
                  size: 120,
                  color: Color(0xFFBDFCC9), // Seafoam Green
                ),
                SizedBox(height: 20),
                Text(
                  'Congratulations!',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF001F3F), // Dark Navy
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'You have completed all the exercises!',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF36454F), // Charcoal Grey
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFBDFCC9),
                      ),
                      onPressed: () {
                        // Add navigation or action for the "Home" button
                        Navigator.pushNamed(context,
                            '/Home'); // Example: Go back to the home page
                      },
                      child: Text('Home'),
                    ),
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: Color(0xFFBDFCC9),
                    //   ),
                    //   onPressed: () {
                    //     // Add navigation or action for the "Home" button
                    //     Navigator.pushNamed(
                    //         context,
                    //         widget
                    //             .navigatorpage); // Example: Go back to the home page
                    //   },
                    //   child: Text('Next Exercise'),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
