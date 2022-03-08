import 'package:flutter/material.dart';
import 'package:instagram_clone/app/home/views/home_view.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.black,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
