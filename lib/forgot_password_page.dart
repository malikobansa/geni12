import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fullscreen background image
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0), // No border radius for fullscreen
              child: Image.asset(
                'assets/image.png', // Add your image asset here
                fit: BoxFit.cover, // Make the image cover the full screen
              ),
            ),
          ),
          // Overlay content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter your email to reset your password',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white, // Make text visible over the image
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.black),//bel text color
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8), // Slightly transparent background
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle password reset logic
                  },
                  child: Text('Reset Password'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}