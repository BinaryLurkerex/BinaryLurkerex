import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:profile/core/injector/injector.dart';
import 'package:profile/core/runner/runner.dart';
import 'package:profile/src/presentation/pages/home_page.dart';
import 'package:profile/src/presentation/styles/context_colors.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injector.initServices();
  await Runner.performPlatformSpecificActions();

  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'BinaryLurkerex Profile Page',
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        primaryColor: context.primaryColor,
      ),
      builder: (context, child) {
        return const HomePage();
      },
    );
  }
}
