import 'package:flutter/material.dart';

class TitleAndViewAllWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onTapHandler;

  const TitleAndViewAllWidget({
    super.key,
    required this.title,
    this.onTapHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          GestureDetector(
            onTap: onTapHandler,
            child: Text(
              "View All",
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
