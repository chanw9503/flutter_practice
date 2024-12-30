import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AssetsShowCase extends StatelessWidget {
  const AssetsShowCase({super.key});
  @override
  Widget build(BuildContext context) {
    return AdsPage(
        title: 'Assets Showcase',
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: double.maxFinite),
              const SizedBox(height: 20),
              CommonAssets.images.appLogoBar.image(
                height: 80,
              ),
              const SizedBox(height: 8),
              CommonAssets.images.owl0.image(
                height: 80,
              ),
              const SizedBox(height: 8),
              CommonAssets.images.owl1.image(
                height: 80,
              ),
              const SizedBox(height: 8),
              CommonAssets.images.owl2.image(
                height: 80,
              ),
              const SizedBox(height: 8),
              CommonAssets.images.owl3.image(
                height: 80,
              ),
              const SizedBox(height: 8),
              CommonAssets.images.owl4.image(
                height: 80,
              ),
              const SizedBox(height: 8),
              CommonAssets.images.owl5.image(
                height: 80,
              ),
              const SizedBox(height: 8),
              CommonAssets.images.owlParent.image(
                height: 80,
              ),
              const SizedBox(height: 8),
              CommonAssets.images.owlStudent.image(
                height: 80,
              ),
              const SizedBox(height: 8),
              CommonAssets.images.bundleWrongAnswer1.image(
                height: 80,
              ),
              const SizedBox(height: 20),
              Text('Sound', style: context.h3),
              const SizedBox(height: 8),
              Text('effectSound1', style: context.h4),
              const SizedBox(height: 4),
            ],
          ),
        ));
  }
}
