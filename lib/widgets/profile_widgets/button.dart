import 'package:flutter/material.dart';

class TextInTheButton extends StatelessWidget {
  final String label;
  const TextInTheButton({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        color: Color.fromRGBO(22, 24, 35, 1),
        fontSize: 15,
      ),
    );
  }
}

class Button extends StatelessWidget {
  final Widget widget;
  const Button({
    super.key,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      color: const Color.fromRGBO(218, 218, 218, 0.4),
      onPressed: () {},
      padding: const EdgeInsets.all(10),
      minWidth: 0,
      height: 0,
      child: widget,
    );
  }
}
