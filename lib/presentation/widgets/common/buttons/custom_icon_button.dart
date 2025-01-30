import 'dart:ui'; // Required for ImageFilter

import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  const CustomIconButton({super.key});

  @override
  _CustomIconButtonState createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton>
    with SingleTickerProviderStateMixin {
  double _scale = 1.0; // Used to scale the button during tap
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration:
          const Duration(milliseconds: 100), // Duration for the tap animation
      lowerBound: 0.9, // Minimum scale (90% original size)
      upperBound: 1.0, // Maximum scale (original size)
    );
    _controller.addListener(() {
      setState(() {
        _scale = _controller.value;
      });
    });
  }

  void _onTapDown(TapDownDetails details) {
    _controller.reverse(); // Shrink the button
  }

  void _onTapUp(TapUpDetails details) {
    _controller.forward(); // Restore the button to its original size
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: () => _controller.forward(),
      onTap: () {
        // Handle your button action here
        debugPrint("Button tapped!");
      },
      child: Transform.scale(
        scale: _scale,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Gradient Border
            Container(
              width: 150,
              height: 50,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ), // Apply same borderRadius for border
              ),
            ),
            // Content with solid background
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ), // Apply corner rounding
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 90, sigmaY: 90), // Blur effect
                child: Container(
                  width: 140, // Slightly smaller to reveal the border
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Add",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
