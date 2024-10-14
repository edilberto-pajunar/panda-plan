import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 8))
        ..repeat();

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double radius = 180;
    const pandas = [
      'assets/images/panda_1.png',
      'assets/images/panda_2.png',
      'assets/images/panda_3.png',
    ];

    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            RotationTransition(
              turns: _animationController,
              child: SizedBox(
                width: radius * 2,
                height: radius * 2,
                child: DottedBorder(
                  color: Colors.white,
                  borderType: BorderType.Circle,
                  strokeWidth: 1,
                  dashPattern: const [20, 20],
                  strokeCap: StrokeCap.round,
                  child: Container(),
                  // decoration: BoxDecoration(
                  //   shape: BoxShape.circle,
                  //   border: Border.all(
                  //     color: Colors.white,
                  //     style: BorderStyle.solid,
                  //   ),
                  // ),
                ),
              ),
            ),
            for (int i = 0; i < 3; i++)
              RotationTransition(
                turns: _animationController,
                child: Transform.translate(
                  offset: Offset(
                    radius * cos(2 * pi * i / 3), // Calculate x position
                    radius * sin(2 * pi * i / 3), // Calculate y position
                  ),
                  child: Transform.rotate(
                    angle: -(2 * pi * i / 3),
                    child: Image.asset(
                      pandas[i],
                      height: 95,
                    ),
                  ),
                ),
              ),
            SizedBox(
              width: radius * 1.5,
              height: radius * 2,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Panda Plan",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12.0),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 24.0),
                        hintText: "Enter your email",
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        hintText: "Enter your password",
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Login"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
