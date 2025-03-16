import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'Screens/onBoarding.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  Future<void> resetOnboarding() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('seenOnboarding');
    Get.offAll(Onboarding());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to Log In Page"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: resetOnboarding,
              child: Text("Reset Onboarding"),
            ),
          ],
        ),
      ),
    );
  }
}
