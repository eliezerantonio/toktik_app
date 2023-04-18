import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post_entity.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';

import '../video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {
  const VideoScrollableView({super.key, required this.videos});

  final List<VideoPostEntity> videos;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final videoPostEntity = videos[index];

        return Stack(
          children: [
            SizedBox.expand(
              child: FullScreenPlayer(
                cation: videoPostEntity.caption,
                videoUrl: videoPostEntity.videoUrl,
              ),
            ),
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(
                videoPostEntity: videoPostEntity,
              ),
            )
          ],
        );
      },
    );
  }
}
