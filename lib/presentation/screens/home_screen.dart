import 'package:flutter/material.dart';
import 'package:hand_sign_translator/presentation/widgets/common/background_gradient.dart';
import 'package:hand_sign_translator/presentation/widgets/common/text/main_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background with specific height
            Center(
              child: SizedBox(
                height: screenHeight, // Full screen height
                child: const BackgroundGradient(),
              ),
            ),

            // Column for content
            Positioned(
              top: screenHeight * 0.15,
              left: screenWidth * 0.1,
              child: const MainTitle(
                title: "Hola Pablo!",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
