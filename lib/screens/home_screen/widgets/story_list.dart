import 'package:facebook_route_project/screens/home_screen/widgets/create_story.dart';
import 'package:flutter/material.dart';

import '../../../model/story_model.dart';

class StoryList extends StatelessWidget {
  StoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 178,
      child: ListView.builder(
          itemCount: stories.length + 1,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            if (index == 0) {
             return const CreateStory();
            }
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    child: Image.asset(
                      stories[index - 1].largeImage,
                      width: 112,
                      height: 178,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(stories[index - 1].smallImage)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        border: Border.all(
                          color: const Color(0xFF1877F2),
                          width: 1.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }

  List<StoryModel> stories = [
    StoryModel(
        smallImage: 'assets/images/goat.jpg',
        largeImage: 'assets/images/world_cup.jpg'),
    StoryModel(
        smallImage: 'assets/images/messi2.jpg',
        largeImage: 'assets/images/lamine.png'),
    StoryModel(
        smallImage: 'assets/images/robert.jpg',
        largeImage: 'assets/images/barcelona.jpg'),
  ];
}
