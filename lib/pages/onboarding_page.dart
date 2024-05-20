import 'package:collecta_verse_pt2/pages/login_page.dart';
import 'package:collecta_verse_pt2/introduction_screens/intro_page_1.dart';
import 'package:collecta_verse_pt2/introduction_screens/intro_page_2.dart';
import 'package:collecta_verse_pt2/introduction_screens/intro_page_3.dart';
import 'package:collecta_verse_pt2/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  //controller
  PageController _controller = PageController();

  //son sayfadamiyim kontrolu
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ],
        ),
        //dot indicator
        Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip//sonsayfaya gelecek
                GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text("skip")),

                //dot indicator
                SmoothPageIndicator(
                    effect: SlideEffect(
                      dotColor: Colors.grey.shade200,
                      activeDotColor: color4,
                    ),
                    controller: _controller,
                    count: 3),

                //next or done
                //sayfa atlayacak
                //son sayfadaysa done olacak (onLastPage )
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: Text("done"))
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text("next")),
              ],
            ))
      ],
    ));
  }
}
