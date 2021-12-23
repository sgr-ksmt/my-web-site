import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:website/widgets/buttons.dart';
import 'package:website/widgets/footer.dart';
import 'package:website/widgets/id_text.dart';
import 'package:website/widgets/name_text.dart';
import 'package:website/widgets/profile_icon.dart';
import 'package:website/widgets/role_text.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: MediaQuery.of(context).size.width >= 500
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const ProfileIcon(),
                        const Gap(16),
                        Flexible(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              NameText(),
                              IDText(),
                              Gap(4),
                              RoleText(),
                              Gap(8),
                              LinkButtons(),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: const [
                        ProfileIcon(),
                        Gap(32),
                        NameText(),
                        IDText(),
                        Gap(4),
                        RoleText(),
                        Gap(16),
                        LinkButtons(),
                      ],
                    ),
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
