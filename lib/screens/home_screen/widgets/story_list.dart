import 'package:flutter/material.dart';
import '../../../model/story_model.dart';
import 'create_story.dart';

class StoryList extends StatelessWidget {
  StoryList({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: size.height * .3,
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
                width: 5,
              ),
          itemCount: stories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const CreateStory();
            }
            return Column(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: size.width * .30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: AssetImage(stories[index - 1].largeImage),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFF1877F2),
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage(stories[index - 1].smallImage),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
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
    StoryModel(
        smallImage: 'assets/images/robert.jpg',
        largeImage: 'assets/images/barcelona.jpg'),
    StoryModel(
        smallImage: 'assets/images/robert.jpg',
        largeImage: 'assets/images/barcelona.jpg'),
  ];
}
