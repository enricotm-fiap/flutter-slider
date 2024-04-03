import 'package:flutter/material.dart';

class ColorSlider extends StatelessWidget {
  final Color color;
  final double value;
  final void Function(double) onChanged;

  ColorSlider({
    required this.color,
    required this.value,
    required this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Slider(
            activeColor: color,
            value: value,
            min: 0,
            max: 255,
            onChanged: onChanged
          ),
        ),
        Text(
          '0',
          style: TextStyle(
              color: color, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ],
    );
  }
}
