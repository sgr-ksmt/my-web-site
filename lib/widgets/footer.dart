import 'dart:html' as html;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Footer extends HookWidget {
  const Footer();

  @override
  Widget build(BuildContext context) {
    final isHoverOnFlutter = useState(false);
    final isHoverOnFirebase = useState(false);
    return Positioned.fill(
      bottom: 0,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1?.color,
                  ),
                  children: [
                    const TextSpan(text: 'Built with '),
                    TextSpan(
                      text: 'Flutter 💙',
                      style: TextStyle(
                        decoration: isHoverOnFlutter.value ? TextDecoration.underline : null,
                      ),
                      onEnter: (_) => isHoverOnFlutter.value = true,
                      onExit: (_) => isHoverOnFlutter.value = false,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => html.window.open('https://flutter.dev/', '_blank'),
                    ),
                    const TextSpan(text: ' and running on '),
                    TextSpan(
                      text: 'Firebase 🧡',
                      style: TextStyle(
                        decoration: isHoverOnFirebase.value ? TextDecoration.underline : null,
                      ),
                      onEnter: (_) => isHoverOnFirebase.value = true,
                      onExit: (_) => isHoverOnFirebase.value = false,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => html.window.open('https://firebase.google.com/', '_blank'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
