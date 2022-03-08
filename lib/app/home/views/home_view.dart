import 'package:flutter/material.dart';
import 'package:instagram_clone/app/home/components/body_component.dart';
import 'package:instagram_clone/app/home/components/bottom_navigation_bar_component.dart';
import 'package:instagram_clone/app/home/widgets/icon_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(fontSize: 27),
        ),
        actions: const [
          IconWidget(icon: Icons.add_box_outlined),
          IconWidget(icon: Icons.favorite_border),
          IconWidget(icon: Icons.message_outlined),
        ],
      ),
      body: const BodyComponent(),
      bottomNavigationBar: const BottomNavigationBarComponent(),
    );
  }
}
