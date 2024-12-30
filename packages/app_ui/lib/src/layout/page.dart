import 'package:flutter/material.dart';

import '../../app_ui.dart';

class AdsPage extends StatelessWidget {
  final String? title;
  final Widget? leading;
  final List<Widget>? actions;
  final Widget? body;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;
  final bool bottomSafeArea;

  const AdsPage({
    super.key,
    required this.body,
    this.title,
    this.leading,
    this.actions,
    this.bottomNavigationBar,
    this.backgroundColor,
    this.bottomSafeArea = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor ?? context.white,
      child: SafeArea(
        bottom: bottomSafeArea,
        child: Scaffold(
          appBar: title != null
              ? AppBar(
                  toolbarHeight: 48.h,
                  title: Text(
                    title ?? '',
                    style: context.h3,
                  ),
                  centerTitle: true,
                  backgroundColor: context.white,
                  surfaceTintColor: context.white,
                  titleSpacing: 0,
                  leadingWidth: leading == null ? 66.r : null,
                  leading: leading ??
                      Padding(
                        padding: EdgeInsets.only(left: 20.r),
                        child: Center(
                          child: AdsIconButton(
                            size: 48.r,
                            icon: Icons.arrow_back_ios_outlined,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ),
                  actions: actions ?? [],
                )
              : null,
          backgroundColor: context.white,
          body: body,
          bottomNavigationBar: bottomNavigationBar,
        ),
      ),
    );
  }
}
