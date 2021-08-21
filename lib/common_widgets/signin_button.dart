import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key? key,
    required this.title,
    required this.color,
    required this.titleColor,
    required this.onPressed,
    this.assetName,
    required this.opacity1,
    required this.opacity2,
  }) : super(key: key);

  final String title;

  final Color color;
  final Color titleColor;
  final VoidCallback onPressed;
  final String? assetName;
  final double opacity1;
  final double opacity2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Opacity(
              opacity: opacity1,
              child: Image.asset(assetName ?? ''),
            ),
            Text(
              title,
              style: TextStyle(
                color: titleColor,
                fontSize: 16,
              ),
            ),
            Opacity(
              opacity: opacity2,
              child: Image.asset(assetName ?? ''),
            ),
          ],
        ),
      ),
    );
  }
}
