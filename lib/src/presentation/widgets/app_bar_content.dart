import 'package:flutter/cupertino.dart';
import 'package:profile/src/presentation/styles/context_colors.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(boxShadow: <BoxShadow>[
        BoxShadow(offset: const Offset(0, 4), color: context.secondaryColor),
      ]),
      padding: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 20.0,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600.0) {
            return const Row(
              children: [
                _GitHubAvatar(),
                Spacer(),
                Icon(
                  CupertinoIcons.option,
                  size: 24.0,
                ),
              ],
            );
          }

          return Row(
            children: [
              const _GitHubAvatar(),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Personal',
                  style: TextStyle(
                    height: 2.0,
                    color: context.onSecondaryColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Roadmap',
                  style: TextStyle(
                    height: 2.0,
                    color: context.hintColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'TODO',
                  style: TextStyle(
                    height: 2.0,
                    color: context.hintColor,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _GitHubAvatar extends StatelessWidget {
  const _GitHubAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 48.0,
          height: 48.0,
          decoration: BoxDecoration(
            color: context.backgroundColor,
            shape: BoxShape.circle,
            image: const DecorationImage(
              image: AssetImage('assets/github_avatar.jpeg'),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            'BinaryLurkerex',
          ),
        ),
      ],
    );
  }
}
