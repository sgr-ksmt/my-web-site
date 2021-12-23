import 'package:flutter/material.dart';
import 'package:website/gen/assets.gen.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: CircleAvatar(
        radius: 64,
        child: Assets.images.icon.image(),
      ),
    );
  }
}
