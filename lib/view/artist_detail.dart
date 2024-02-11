import 'package:flutter/material.dart';
import 'package:mobil_music_app/constans/app_padding.dart';
import 'package:mobil_music_app/constans/mytext_style.dart';
import 'package:mobil_music_app/widgets/body_subtitle_widget.dart';

class ArtistDetail extends StatelessWidget {
  const ArtistDetail({super.key});

  final bool isFollow = true;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ArtistDetailHeaderWidget(
                deviceHeight: deviceHeight,
                deviceWidth: deviceWidth),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppPadding().viewHorizontalPadding,
                ),
                child: Column(
                  children: [
                    ArtistDetailControlsWidget(isFollow: isFollow),
                    const BodySubtitleWidget(
                      subtitle: 'Artis reccommendation',
                    ),
                    const ArtistDetailItemWidget(
                      height: 96,
                      itemImageUrl: 'assets/images/rectangle_11.png',
                    ),
                    const BodySubtitleWidget(
                      subtitle: 'Populer songs',
                    ),
                    const MusicCardWidget(),
                    const MusicCardWidget(),
                    const MusicCardWidget(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MusicCardWidget extends StatelessWidget {
  const MusicCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
        children: [
          Text(
            '1 .',
            style: MyTextStyle().sbodyTextStyle.copyWith(
                  color: Colors.white,
                ),
          ),
          const SizedBox(
            width: 5,
          ),
          const Image(
            image: AssetImage('assets/images/Rectangle 9.png'),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  'Dreamer',
                  style: MyTextStyle().bodyTextStyle,
                ),
                Text(
                  '250,118,880',
                  style: MyTextStyle().sbodyTextStyle,
                ),
              ],
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 25,
          )
        ],
      ),
    );
  }
}

class ArtistDetailItemWidget extends StatelessWidget {
  const ArtistDetailItemWidget({
    super.key,
    required this.height,
    required this.itemImageUrl,
  });

  final double? height;
  final String itemImageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Row(
        children: [
          Image(
            image: AssetImage(
              itemImageUrl,
            ),
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              color: const Color.fromARGB(255, 75, 8, 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'All of us',
                      textAlign: TextAlign.left,
                      style: MyTextStyle().bodyTextStyle,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'playlist',
                      textAlign: TextAlign.left,
                      style: MyTextStyle().bodyTextStyle.copyWith(
                            color: Colors.redAccent,
                            fontSize: 12,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ArtistDetailControlsWidget extends StatelessWidget {
  const ArtistDetailControlsWidget({
    super.key,
    required this.isFollow,
  });

  final bool isFollow;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
      ),
      height: 62,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              '3,690420 Monthlu Listener',
              textAlign: TextAlign.left,
              style: MyTextStyle().sbodyTextStyle,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(
                    MyTextStyle().bodyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                  ),
                  side: MaterialStateProperty.all(
                    BorderSide(
                      color: isFollow ? Colors.white : Colors.red,
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Follow',
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shuffle,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_circle_fill_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class ArtistDetailHeaderWidget extends StatelessWidget {
  const ArtistDetailHeaderWidget({
    super.key,
    required this.deviceHeight,
    required this.deviceWidth,
  });

  final double deviceHeight;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight *35/100,
      width: deviceWidth,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/artist_detail_header_bk.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding().viewHorizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Ink(
              decoration: const ShapeDecoration(
                shape: CircleBorder(),
                color: Colors.lightBlue,
              ),
              child: IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {},
                iconSize: 25,
                color: Colors.white,
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
            ),
            SizedBox(
              height: 96,
              width: 305,
              child: Text(
                '4 COOL DUDE ON THE STREET',
                style: MyTextStyle().bodyTitleStyle.copyWith(fontSize: 32),
              ),
            )
          ],
        ),
      ),
    );
  }
}
