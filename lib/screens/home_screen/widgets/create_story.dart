import 'package:flutter/material.dart';

class CreateStory extends StatelessWidget {
  const CreateStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 178,
        color: Colors.white,
        child: Stack(
          clipBehavior: Clip.hardEdge,
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)),
                child: Image.asset('assets/images/messi.jpg',
                    width: 112, height: 100, fit: BoxFit.cover),
              ),
            ),
            Positioned(
              height: 30,
              bottom: 50,
              child: Container(
                width: 30,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/icons/plus-circle.png'),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(60.0)),
                ),
              ),
            ),
            const Positioned(
              height: 50,
              bottom: 0,
              child: SizedBox(
                width: 60,
                child: Text(
                  textAlign: TextAlign.center,
                  'Create a Story',
                  style: TextStyle(
                      height: 1.5,
                      fontSize: 12,
                      color: Color(0xFF242527),
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
