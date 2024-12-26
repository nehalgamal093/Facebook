import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          minLeadingWidth: 30,
          title: Text(
            'Route',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/route.jpg'),
          ),
          subtitle: Row(
            children: [
              Text('8h .',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color(0xFF898F9C))),
              ImageIcon(AssetImage('assets/icons/earth.png'),
                  size: 10, color: Color(0xFF898F9C))
            ],
          ),
          trailing: Icon(Icons.more_horiz),
        ),
        Image.asset(
          'assets/images/route2.jpg',
          fit: BoxFit.fill,
          height: 271,
          width: 393,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            children: [
              ImageIcon(
                AssetImage('assets/icons/heart.png'),
                color: Colors.black,
              ),
              SizedBox(width: 5),
              ImageIcon(AssetImage('assets/icons/msg.png')),
              SizedBox(width: 5),
              ImageIcon(AssetImage('assets/icons/send.png')),
              Spacer(),
              ImageIcon(AssetImage('assets/icons/bookmark.png')),
            ],
          ),
        ),
        const Divider(
          color: Color(0xFF898F9C),
        ),
      ],
    );
  }
}
