import 'package:flutter/material.dart';

class TabIcons extends StatelessWidget {
  String image;
  int color;
  double size;
  TabIcons(
      {required this.image,
      required this.color,
      required this.size,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageIcon(
          AssetImage(image),
          size: size,
          color: Color(color),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
