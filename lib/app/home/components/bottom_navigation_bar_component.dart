import 'package:flutter/material.dart';
import 'package:instagram_clone/app/home/widgets/icon_widget.dart';

class BottomNavigationBarComponent extends StatelessWidget {
  const BottomNavigationBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        const BottomNavigationBarItem(
            icon: IconWidget(icon: Icons.home), label: ''),
        const BottomNavigationBarItem(
            icon: IconWidget(icon: Icons.search), label: ''),
        const BottomNavigationBarItem(
            icon: IconWidget(icon: Icons.movie), label: ''),
        const BottomNavigationBarItem(
            icon: IconWidget(icon: Icons.shopping_bag_outlined), label: ''),
        BottomNavigationBarItem(
            icon: Image.asset('images/avatar.png', height: 35, width: 35),
            label: '')
      ],
    );
  }
}
