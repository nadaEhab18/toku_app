import 'package:flutter/material.dart';
import 'package:toku_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;
  late Animation<Offset> textSlideAnimation;
  late Animation<Offset> imageSlideAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize Animation Controller with a 2-second duration for quicker visibility
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    // Set up Fade Animation from 0 (invisible) to 1 (fully visible)
    fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.0, 1.0, curve: Curves.easeIn),
      ),
    );

    // Adjust text slide animation to move horizontally from left to center
    textSlideAnimation = Tween<Offset>(
      begin: const Offset(-1, 0), // Horizontal movement from left
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.0, 1.0, curve: Curves.easeInOut),
      ),
    );

    // Adjust image slide animation to move vertically from bottom to center
    imageSlideAnimation = Tween<Offset>(
      begin: const Offset(0, 1), // Vertical movement from bottom
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.0, 1.0, curve: Curves.easeInOut),
      ),
    );

    // Start the animation
    animationController.forward();

    // Add a listener to delay for 1 minute before navigating to HomeScreen
    animationController.addListener(() {
      if (animationController.isCompleted) {
        // Wait for 1 minute before transitioning
        Future.delayed(const Duration(seconds: 2), () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDEE5D4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Slide the image vertically with fading animation
            SlideTransition(
              position: imageSlideAnimation,
              child: FadeTransition(
                opacity: fadeAnimation,
                child: Image.asset(
                  'assets/images/kids.png',
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Slide the text horizontally with fading animation
            SlideTransition(
              position: textSlideAnimation,
              child: Column(
                children: [
                  FadeTransition(
                    opacity: fadeAnimation,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildLetter('T', Colors.amber.shade200),
                        _buildLetter('O', Colors.green.shade200),
                        _buildLetter('K', Colors.purpleAccent),
                        _buildLetter('U', Colors.blueAccent.shade200),
                      ],
                    ),
                  ),
                  FadeTransition(
                    opacity: fadeAnimation,
                    child: const Text(
                      'Let\'s Learn Japanese',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff8EACCD),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build text with styling
  Widget _buildLetter(String letter, Color color) {
    return Text(
      letter,
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
