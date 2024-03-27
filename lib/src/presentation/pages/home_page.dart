import 'package:flutter/cupertino.dart';
import 'package:profile/src/presentation/styles/context_colors.dart';
import 'package:profile/src/presentation/widgets/app_bar_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: context.backgroundColor,
      child: Column(
        children: [
          AppBarWidget(),
          const Expanded(
            child: CustomScrollView(
              slivers: [],
            ),
          ),
        ],
      ),
    );
  }
}
