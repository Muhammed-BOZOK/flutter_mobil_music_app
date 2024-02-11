import 'package:flutter/material.dart';
import 'package:mobil_music_app/constans/app_padding.dart';
import 'package:mobil_music_app/constans/mytext_style.dart';
import 'package:mobil_music_app/widgets/body_subtitle_widget.dart';
import 'package:mobil_music_app/widgets/long_card_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    String headerrTitle = 'Musify';
    String assetName = 'assets/images/Rectangle 6.png';
    String recenlyPlayedItemTitle = 'Something of us';
    final double device = MediaQuery.of(context).size.height;
    // ignore: avoid_print
    print(device);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: AppPadding().viewVerticalPadding,
            horizontal: AppPadding().viewHorizontalPadding,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HomeHeaderWidget(headerrTitle: headerrTitle),
                const BodySubtitleWidget(
                  subtitle: 'Recenly Played',
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      AppItemWidget(
                        assetName: assetName,
                        itemTitle: recenlyPlayedItemTitle,
                        alignmentGeometry: Alignment.topLeft,
                      ),
                      AppItemWidget(
                        assetName: 'assets/images/Rectangle_2.png',
                        itemTitle: recenlyPlayedItemTitle,
                        alignmentGeometry: Alignment.topLeft,
                      ),
                      AppItemWidget(
                        assetName: assetName,
                        itemTitle: recenlyPlayedItemTitle,
                        alignmentGeometry: Alignment.topLeft,
                      ),
                      AppItemWidget(
                        assetName: assetName,
                        itemTitle: recenlyPlayedItemTitle,
                        alignmentGeometry: Alignment.topLeft,
                      ),
                      AppItemWidget(
                        assetName: assetName,
                        itemTitle: recenlyPlayedItemTitle,
                        alignmentGeometry: Alignment.topLeft,
                      ),
                    ],
                  ),
                ),
                const BodySubtitleWidget(
                  subtitle: 'New Release',
                ),
                const LongCardWidget(),
                const BodySubtitleWidget(
                  subtitle: 'Your Favorite Artists',
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppItemWidget(
                        assetName: 'assets/images/Ellipse_1.png',
                        itemTitle: 'artis name with max line of three',
                        alignmentGeometry: Alignment.bottomCenter,
                        textAlign: TextAlign.center,
                        width: 128,
                      ),
                      AppItemWidget(
                        assetName: 'assets/images/Ellipse_2.png',
                        itemTitle: 'artis name',
                        alignmentGeometry: Alignment.bottomCenter,
                        textAlign: TextAlign.center,
                        width: 128,
                      ),
                      AppItemWidget(
                        assetName: 'assets/images/Ellipse_3.png',
                        itemTitle: 'artis name',
                        alignmentGeometry: Alignment.bottomCenter,
                        textAlign: TextAlign.center,
                        width: 128,
                      ),
                      AppItemWidget(
                        assetName: 'assets/images/Ellipse_4.png',
                        itemTitle: 'artis name',
                        alignmentGeometry: Alignment.bottomCenter,
                        textAlign: TextAlign.center,
                        width: 128,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AppItemWidget extends StatelessWidget {
  const AppItemWidget({
    super.key,
    required this.assetName,
    required this.itemTitle,
    required this.alignmentGeometry,
     this.textAlign,
    this.width,
  });

  final String assetName;
  final String itemTitle;
  final AlignmentGeometry alignmentGeometry;
  final TextAlign? textAlign;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.only(
        right: 10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(
              assetName,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: alignmentGeometry,
            child: Text(
              textAlign: textAlign,
              itemTitle,
              style: MyTextStyle().bodyTextStyle,
            ),
          )
        ],
      ),
    );
  }
}

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({
    super.key,
    required this.headerrTitle,
  });

  final String headerrTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headerrTitle,
          style: MyTextStyle().headerTextStyle,
        ),
        const Icon(
          Icons.notifications_none,
          size: 20,
          color: Colors.white,
        )
      ],
    );
  }
}




