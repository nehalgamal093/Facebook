import 'package:flutter/material.dart';

class PostTextField extends StatelessWidget {
  const PostTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  const TextField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
          hintStyle: TextStyle(
              color: Color(0xFF898F9C),
              fontWeight: FontWeight.w500,
              fontSize: 16),
          prefixIcon: Padding(
            padding: EdgeInsets.all(16.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/messi.jpg'),
            ),
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.all(16.0),
            child: ImageIcon(
              color: Color(0xFF0DE571),
              AssetImage('assets/icons/photos.png'),
              size: 28,
            ),
          ),
          hintText: 'What\'s in Your Mind?'),
    );
  }
}
