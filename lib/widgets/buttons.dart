import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:website/gen/assets.gen.dart';

class LinkButtons extends StatelessWidget {
  const LinkButtons();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      children: const [
        AboutButton(),
        GitHubButton(),
        TwitterButton(),
        LinkedInButton(),
        ZennButton(),
        MediumButton(),
        KotekanButton(),
      ],
    );
  }
}

class _LinkedIconButton extends StatelessWidget {
  const _LinkedIconButton({
    required this.icon,
    required this.url,
    required this.hoverMessage,
    this.asNew = false,
  });

  final Widget icon;
  final String url;
  final String hoverMessage;
  final bool asNew;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: hoverMessage,
      child: IconButton(
        splashRadius: 20,
        onPressed: () => html.window.open(url, asNew ? '_blank' : '_self'),
        icon: icon,
      ),
    );
  }
}

class AboutButton extends StatelessWidget {
  const AboutButton();

  @override
  Widget build(BuildContext context) {
    return const _LinkedIconButton(
      hoverMessage: 'About',
      url: 'https://sgr-ksmt.notion.site/Suguru-Kishimoto-Software-Engineer-1e8e78b9de5a49d3952f283663a40123',
      icon: FaIcon(FontAwesomeIcons.userAlt),
    );
  }
}

class GitHubButton extends StatelessWidget {
  const GitHubButton();

  @override
  Widget build(BuildContext context) {
    return const _LinkedIconButton(
      hoverMessage: 'GitHub',
      url: 'https://github.com/sgr-ksmt',
      icon: FaIcon(FontAwesomeIcons.github),
    );
  }
}

class TwitterButton extends StatelessWidget {
  const TwitterButton();

  @override
  Widget build(BuildContext context) {
    return const _LinkedIconButton(
      hoverMessage: 'Twitter',
      url: 'https://twitter.com/_sgr_ksmt',
      icon: FaIcon(FontAwesomeIcons.twitter),
    );
  }
}

class LinkedInButton extends StatelessWidget {
  const LinkedInButton();

  @override
  Widget build(BuildContext context) {
    return const _LinkedIconButton(
      hoverMessage: 'LinkedIn',
      url: 'https://www.linkedin.com/in/sgr-ksmt',
      icon: FaIcon(
        FontAwesomeIcons.linkedinIn,
      ),
    );
  }
}

class ZennButton extends StatelessWidget {
  const ZennButton();

  @override
  Widget build(BuildContext context) {
    return _LinkedIconButton(
      hoverMessage: 'Zenn',
      url: 'https://zenn.dev/sgr_ksmt',
      icon: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Assets.images.zenn.svg(
          color: Theme.of(context).textTheme.bodyText1?.color,
        ),
      ),
    );
  }
}

class MediumButton extends StatelessWidget {
  const MediumButton();

  @override
  Widget build(BuildContext context) {
    return const _LinkedIconButton(
      hoverMessage: 'Medium',
      url: 'https://medium.com/@_sgr_ksmt',
      icon: FaIcon(FontAwesomeIcons.mediumM),
    );
  }
}

class KotekanButton extends StatelessWidget {
  const KotekanButton();

  @override
  Widget build(BuildContext context) {
    return _LinkedIconButton(
      hoverMessage: 'Kotekan',
      url: 'https://apps.apple.com/jp/app/id1598027056',
      icon: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Assets.images.kotekan.image(),
      ),
    );
  }
}
