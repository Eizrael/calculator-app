import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color textcolor;
  final Color buttonColor;
  final void Function(String) onPressed;

  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.textcolor = Colors.white, 
    this.buttonColor = const Color(0xFF181818),

  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        onPressed(buttonText);
      },
      style: FilledButton.styleFrom(
        backgroundColor: buttonColor, // Set background color
        shape: const CircleBorder(),
        minimumSize: const Size(65, 65)),
      child: Text(
        buttonText,
        style: TextStyle(
          fontFamily: 'SFpro',
          fontSize: 32,
          color: textcolor, // Set text color
        ),
      )
    );
  }
}


class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      width: 62,
      child: IconButton(
        icon: const Icon(Icons.backspace_outlined),
        color: const Color(0xFF2A73FE),
        onPressed: () {},
        style: IconButton.styleFrom(
          backgroundColor: Colors.grey[900], // Set background color
          shape: const CircleBorder(),
        ),
      ),
    );
  }
}


