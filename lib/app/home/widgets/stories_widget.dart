import 'package:flutter/material.dart';

class StoriesWidgets extends StatelessWidget {
  const StoriesWidgets({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.isLive,
  }) : super(key: key);

  final String imageUrl;
  final String name;
  final bool isLive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          margin: const EdgeInsets.only(right: 3, left: 3),
          height: MediaQuery.of(context).size.height * 0.11,
          width: MediaQuery.of(context).size.width * 0.2,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color(0XFF8134AF),
                Color(0XFFDD2A7B),
                Color(0XFFF58529),
                Color(0xFF515BD4),
              ],
            ),
          ),
          child: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Visibility(
                  visible: isLive,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    margin: const EdgeInsets.only(top: 50),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.pinkAccent[400],
                    ),
                    child: const Text(
                      'AO VIVO',
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
