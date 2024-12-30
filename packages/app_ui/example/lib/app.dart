import 'package:example/assets_showcase.dart';
import 'package:example/button_showcase.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/app_ui.dart';

class ShowCaseApp extends StatelessWidget {
  const ShowCaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("UI ShowCase"),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: double.maxFinite),
              const SizedBox(height: 20),
              AdsOutlinedButton.textBlack(
                text: 'Button Showcase',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ButtonShowCase()));
                },
              ),
              const SizedBox(height: 20),
              AdsOutlinedButton.textBlack(
                text: 'Assets Showcase',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AssetsShowCase()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
