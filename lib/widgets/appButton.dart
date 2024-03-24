import 'package:flutter/material.dart';


class AppButton extends StatelessWidget {
  AppButton({
    super.key,
    this.title,
    this.color = Colors.black,
    this.textColor = Colors.black,
    this.onPressed,
  });

  Widget? title;
  Color color;
  Color textColor;
  Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      child: FilledButton(
        onPressed: () {
          onPressed?.call();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: title,
      ),
    );
  }
}
