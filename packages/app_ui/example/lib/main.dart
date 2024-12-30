import 'package:example/app.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/app_ui.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(
    const App(),
  );
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (_, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'UI KIT',
        theme: ThemeData(
          brightness: Brightness.light,
          colorSchemeSeed: context.brandNormal,
        ),
        home: const ShowCaseApp(),
      );
    });
  }
}
