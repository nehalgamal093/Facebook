import 'package:facebook_route_project/screens/home_screen/widgets/post_card.dart';
import 'package:facebook_route_project/screens/home_screen/widgets/post_text_field.dart';
import 'package:facebook_route_project/screens/home_screen/widgets/story_list.dart';
import 'package:facebook_route_project/screens/home_screen/widgets/tab_icons.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          forceMaterialTransparency: true,
          automaticallyImplyLeading: false,
          title: Image.asset(
            'assets/images/facebook_appbar.png',
            width: 156,
          ),
          actions: const [
            ImageIcon(
              AssetImage('assets/icons/plus.png'),
              size: 22,
            ),
            SizedBox(width: 10),
            ImageIcon(
              AssetImage('assets/icons/search.png'),
              size: 22,
            ),
            SizedBox(width: 10),
            ImageIcon(
              AssetImage('assets/icons/messenger.png'),
              size: 22,
            ),
            SizedBox(width: 10),
          ],
          bottom: TabBar(
              indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3.0, color: Color(0xFF1877F2)),
                  insets: EdgeInsets.symmetric(horizontal: 40.0)),
              indicatorColor: const Color(0xFF1877F2),
              indicatorWeight: 3.0,
              tabs: [
                TabIcons(
                  image: 'assets/icons/home.png',
                  color: 0xFF1877F2,
                  size: 23,
                ),
                TabIcons(
                  image: 'assets/icons/watch_party.png',
                  color: 0xFF898F9C,
                  size: 25,
                ),
                TabIcons(
                  image: 'assets/icons/store.png',
                  color: 0xFF898F9C,
                  size: 25,
                ),
                TabIcons(
                  image: 'assets/icons/profile.png',
                  color: 0xFF898F9C,
                  size: 25,
                ),
                TabIcons(
                  image: 'assets/icons/notification.png',
                  color: 0xFF898F9C,
                  size: 25,
                ),
                const CircleAvatar(
                  radius: 31,
                  backgroundImage: AssetImage('assets/images/messi.jpg'),
                ),
              ]),
        ),
        body: Column(
          children: [
            const PostTextField(),
            const Divider(

              
              color: Color(0xFF898F9C),
              thickness: 2,
            ),
            StoryList(),
            const Divider(
              color: Color(0xFF898F9C),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return const PostCard();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
