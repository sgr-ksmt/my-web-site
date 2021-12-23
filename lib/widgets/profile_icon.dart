import 'package:flutter/material.dart';
import 'package:website/gen/assets.gen.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.transparent,
      elevation: 4,
      borderRadius: BorderRadius.circular(64),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 64,
        child: ClipOval(
          child: Assets.images.icon.image(),
        ),
      ),
    );
  }
}
