import 'package:flutter/material.dart';
import 'package:time_tracker/common_widgets/signin_button.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Time Tracker',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Sign In',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 48,
            ),
            SignInButton(
              onPressed: () {},
              opacity1: 1,
              opacity2: 0,
              title: 'Sign in with Google',
              titleColor: Colors.black87,
              color: Colors.white,
              assetName: 'assets/images/google-logo.png',
            ),
            SizedBox(
              height: 8,
            ),
            SignInButton(
              onPressed: () {},
              opacity1: 1,
              opacity2: 0,
              title: 'Sign in with Facebook',
              assetName: 'assets/images/facebook-logo.png',
              titleColor: Colors.white,
              color: Color(0xFF334D92),
            ),
            SizedBox(
              height: 8,
            ),
            SignInButton(
              opacity1: 0,
              opacity2: 0,
              assetName: 'assets/images/facebook-logo.png',
              onPressed: () {},
              title: 'Sign in with email',
              titleColor: Colors.white,
              color: Colors.teal[700]!,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'or',
              style: TextStyle(fontSize: 14.0, color: Colors.black87),
            ),
            SizedBox(
              height: 8,
            ),
            SignInButton(
              onPressed: () {},
              opacity1: 0,
              opacity2: 0,
              assetName: 'assets/images/facebook-logo.png',
              title: 'Go anonymous',
              titleColor: Colors.black,
              color: Colors.lime[300]!,
            ),
          ],
        ),
      ),
    );
  }
}
