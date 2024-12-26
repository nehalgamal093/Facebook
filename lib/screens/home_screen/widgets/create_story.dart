import 'package:flutter/material.dart';

class CreateStory extends StatelessWidget {
  const CreateStory({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
            child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    child: Image.asset(
                      width: size.width*.30,
                      'assets/images/messi.jpg',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 46),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3),
                    shape: BoxShape.circle,
                    color: const Color(0xFF1877F2),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Create a',
                  style: TextStyle(
                      height: 1.2,
                      fontSize: 15,
                      color: Color(0xFF242527),
                      fontWeight: FontWeight.w600),
                ),
                const Text(
                  'Story',
                  style: TextStyle(
                      height: 1.2,
                      fontSize: 15,
                      color: Color(0xFF242527),
                      fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ))
      ],
    );
  }
}

