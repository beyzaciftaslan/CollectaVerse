import 'package:collecta_verse_pt2/utils/colors.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemBuilder: (context, index) => LandingContent(
                  //image: "assets/images/deneme3.png",
                  title: "Find the collect items you have been loooking for",
                  description: "Sell or trade your collection products easily",
                ),
              ),
            ),
            SizedBox(
              height: 60,
              width: 60,
              child: ElevatedButton(
                onPressed: () {
                  _pageController.nextPage(
                      duration: Duration(milliseconds: 250),
                      curve: Curves.ease,
                  );
                  },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: EdgeInsets.zero,
                  backgroundColor: color1,
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.arrow_circle_right_outlined,
                    color: color4,
                    size: 60,
                  ),
                ),
              ),
            ),
            //const Spacer(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class LandingContent extends StatelessWidget {
  const LandingContent({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 16),
        Text(description, textAlign: TextAlign.center),
        const Spacer(),
      ],
    );
  }
}
