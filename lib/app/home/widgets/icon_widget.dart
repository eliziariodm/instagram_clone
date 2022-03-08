import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({Key? key, required this.icon}) : super(key: key);

  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(icon, color: Colors.white, size: 30),
    );
  }
}
