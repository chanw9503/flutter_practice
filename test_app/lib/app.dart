import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imdr_app/router/router.dart';

class ImdrApp extends StatelessWidget {
  const ImdrApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return ProviderScope(
          child: MaterialApp.router(
            title: 'Imdr App',
            routeInformationParser: router.routeInformationParser,
            routeInformationProvider: router.routeInformationProvider,
            routerDelegate: router.routerDelegate,
            theme: ThemeData(
              brightness: Brightness.light,
              colorSchemeSeed: context.brandNormal,
              textTheme: Theme.of(context).textTheme.apply(
                    fontSizeFactor:
                        MediaQuery.of(context).size.width > 600 ? 1.2 : 1,
                  ),
            ),
            builder: EasyLoading.init(),
          ),
        );
      },
    );
  }
}
