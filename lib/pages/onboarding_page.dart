import 'package:collecta_verse_pt2/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  //controller
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
        //dot indicator
        Container(
            alignment: Alignment(0, 0.75),
            child: SmoothPageIndicator(
                effect: SlideEffect(
                  dotColor: Colors.grey.shade200,
                  activeDotColor: color4,
                ),
                controller: _controller,
                count: 3))
      ],
    ));
  }
}
