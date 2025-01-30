import 'package:flutter/material.dart';
import 'package:hand_sign_translator/presentation/widgets/common/background_gradient.dart';
import 'package:hand_sign_translator/presentation/widgets/common/buttons/custom_icon_button.dart';
import 'package:hand_sign_translator/presentation/widgets/common/text/main_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Background gradient
          const BackgroundGradient(),

          // Content
          Column(
            children: [
              // Top content
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.1),
                  child: const MainTitle(
                    title: "Hola Pablo!",
                  ),
                ),
              ),
              const SizedBox(height: 16), // Spacing

              const Spacer(
                flex: 1,
              ), // Push buttons to the bottom

              // Buttons
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [CustomIconButton()],
                ),
              ),

              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
