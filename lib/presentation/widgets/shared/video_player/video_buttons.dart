import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entity/video_post.dart';

import '../../../../config/helpers/human_formats.dart';

class VideoButtons extends StatelessWidget {
  const VideoButtons({super.key, required this.videoPost});

  final VideoPost videoPost;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          value: videoPost.likes,
          icon: Icons.favorite,
          iconColor: Colors.red,
          onPressed: () {},
        ),
        const SizedBox(height: 20),
        _CustomIconButton(
          value: videoPost.likes,
          icon: Icons.remove_red_eye_outlined,
          onPressed: () {},
        ),
        const SizedBox(height: 20),
        SpinPerfect(
          // infinite: true,
          duration: const Duration(seconds: 5),
          child: _CustomIconButton(
            value: 0,
            icon: Icons.play_circle_outlined,
            onPressed: () {},
          ),
        )
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  const _CustomIconButton(
      {required this.value,
      required this.icon,
      required this.onPressed,
      iconColor})
      : color = iconColor ?? Colors.white;

  final int value;
  final IconData icon;
  final Color? color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          size: 30,
        ),
        color: color,
      ),
      if (value > 0) Text(HumanFormats.humanReadbleNumber(value.toDouble()))
    ]);
  }
}
