import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AdsPage(body: CarouselWidget());
  }
}

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final CarouselSliderController _controller = CarouselSliderController();
  int _current = 0;

  final List<Map<String, String>> itemList = [
    {
      'title': 'Make reservations with hospitals',
      'desc': 'We help you quickly make reservation with hospitals',
    },
    {
      'title': 'Locate good quality hospitals',
      'desc':
          'We make it easy to find good hospitals close to you, selected by IMDR.',
    },
    {
      'title': 'Manage receipts',
      'desc': 'Keep track of your hospital receipts easily.',
    },
  ];

  Widget buildCarouselItem(Map<String, String> item) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Text(
          item['title']!,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          item['desc']!,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget sliderWidget() {
    return CarouselSlider(
      carouselController: _controller,
      items: itemList.map(buildCarouselItem).toList(),
      options: CarouselOptions(
        autoPlay: true,
        height: 400,
        enlargeCenterPage: true,
        onPageChanged: (index, reason) {
          setState(() {
            _current = index;
          });
        },
      ),
    );
  }

  Widget sliderIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: itemList.asMap().entries.map((entry) {
        return GestureDetector(
          onTap: () => _controller.animateToPage(entry.key),
          child: Container(
            width: 12.0,
            height: 12.0,
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: (_current == entry.key ? Colors.blue : Colors.grey)
                  .withOpacity(0.8),
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sliderWidget(),
        sliderIndicator(),
      ],
    );
  }
}
