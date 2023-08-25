import 'package:flutter/material.dart';

final ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
  backgroundColor: const Color(0xff0C344F),
  foregroundColor: const Color(0xff0C344F),
  //maximumSize: const Size(88, 30),
  padding: const EdgeInsets.all(18),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.zero),
  ),
).copyWith(
  side: MaterialStateProperty.resolveWith<BorderSide>(
        (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return const BorderSide(
          color: Color(0xff0F2333),
          width: 1,
        );
      }
      return const BorderSide(
        color: Color(0xff0C344F),
        width: 1,
      );
    },
  ),
);

