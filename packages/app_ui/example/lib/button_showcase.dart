import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonShowCase extends StatelessWidget {
  const ButtonShowCase({super.key});
  @override
  Widget build(BuildContext context) {
    return AdsPage(
        title: 'Button Showcase',
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: double.maxFinite),
              const SizedBox(height: 20),
              AdsFiledButton(
                text: '기본 버튼',
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              AdsFiledButton(
                icon: const Icon(Icons.add, color: Colors.white),
                text: '아이콘 버튼',
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              AdsTextButton(
                text: '텍스트 버튼',
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              AdsTextButton(
                text: '밑줄 버튼',
                onPressed: () {},
                isUnderline: true,
              ),
              const SizedBox(height: 20),
              AdsTextButton(
                text: '텍스트 아이콘 버튼',
                onPressed: () {},
                icon: Icon(Icons.add, color: context.brandNormal),
              ),
              const SizedBox(height: 20),
              AdsOutlinedButton(
                text: 'Outlined 버튼',
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              AdsOutlinedButton.textBlack(
                text: 'Outlined Black 버튼',
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              AdsOutlinedButton.shadow(
                text: '그림자 Shadow 버튼',
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              AdsOutlinedButton.shadowBlackText(
                text: '그림자 Shadow BlackText 버튼',
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              AdsIconButton(
                  icon: Icons.arrow_back_ios_rounded, onPressed: () {}),
              const SizedBox(height: 20),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.r),
                  child: AdsBottomButton(text: '바텀 버튼', onPressed: () {})),
              const SizedBox(height: 20),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.r),
                  child: AdsBottomButton.outlined(
                      text: '바텀 버튼', onPressed: () {})),
              const SizedBox(height: 20),
              const SizedBox(height: 20),
            ],
          ),
        ));
  }
}
