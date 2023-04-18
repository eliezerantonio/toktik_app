import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/human_formats.dart';
import 'package:toktik/domain/entities/video_post_entity.dart';

class VideoButtons extends StatelessWidget {
  const VideoButtons({super.key, required this.videoPostEntity});
  final VideoPostEntity videoPostEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          value: videoPostEntity.likes,
          color: Colors.red,
          iconData: Icons.favorite,
        ),
        const SizedBox(height: 20),
        _CustomIconButton(
          value: videoPostEntity.views,
          iconData: Icons.remove_red_eye_outlined,
        ),
        const SizedBox(height: 20),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
          child: const _CustomIconButton(
            value: 0,
            iconData: Icons.play_circle_outlined,
          ),
        ),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  const _CustomIconButton({
    required this.value,
    required this.iconData,
    color,
  }) : color = color ?? Colors.white;

  final int value;
  final IconData iconData;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            iconData,
            color: color,
            size: 30,
          ),
        ),
        if (value > 0) Text(HumanFormats.humanReadbleNumbber(value.toDouble())),
      ],
    );
  }
}
