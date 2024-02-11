import 'package:flutter/material.dart';
import 'package:mobil_music_app/constans/mytext_style.dart';

class BodySubtitleWidget extends StatelessWidget {
  const BodySubtitleWidget({
    super.key,
    required this.subtitle,
  });

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        bottom: 15,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          textAlign: TextAlign.left,
          subtitle,
          style: MyTextStyle().bodyTitleStyle,
        ),
      ),
    );
  }
}