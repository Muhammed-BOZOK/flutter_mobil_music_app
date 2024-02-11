import 'package:flutter/material.dart';
import 'package:mobil_music_app/constans/mytext_style.dart';
class LongCardWidget extends StatelessWidget {
  const LongCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        children: [
          const Expanded(
            child: SizedBox(
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/Rectangle 8.png'),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: const Color.fromARGB(255, 75, 8, 8),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text(
                        'I dont miss you',
                        style: MyTextStyle().bodyTextStyle.copyWith(
                              fontSize: 16,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Last of us',
                      style: MyTextStyle().bodyTextStyle.copyWith(
                            fontSize: 12,
                          ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Album',
                      style: MyTextStyle().bodyTextStyle.copyWith(
                            fontSize: 12,
                          ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.play_arrow_outlined,
                        color: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}