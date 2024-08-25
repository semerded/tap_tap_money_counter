import 'package:flutter/material.dart';

typedef VoidCallback = void Function(double value);

class MoneyButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String imagePath;
  final double value;
  const MoneyButton({
    super.key,
    required this.imagePath,
    required this.onPressed,
    required this.value,
  });

  @override
  State<MoneyButton> createState() => _MoneyButtonState();
}

class _MoneyButtonState extends State<MoneyButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IconButton(
        
        onPressed: () => widget.onPressed(widget.value),
        icon: Image.asset(widget.imagePath),
      ),
    );
  }
}
