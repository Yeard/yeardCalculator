import 'package:flutter/material.dart';
import 'package:calculator_app/constants.dart';

class CalculatorButton extends StatefulWidget {
  final Color? color;
  final Function buttonOnPressed;
  const CalculatorButton(
      {super.key,
      required this.buttonLabel,
      required this.buttonOnPressed,
      this.color});

  final String buttonLabel;

  @override
  State<CalculatorButton> createState() => _CalculatorButtonState();
}

class _CalculatorButtonState extends State<CalculatorButton> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * .25,
      height: size.height * .099,
      child: Material(
        color: widget.color ?? const Color(0xff0C344F),
        child: InkWell(
          onTap: () {
            widget.buttonOnPressed();
          },
          child: Center(
            child: Text(
              widget.buttonLabel,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
