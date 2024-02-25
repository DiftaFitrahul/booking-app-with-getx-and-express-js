import 'package:booking_app/constants/assets.dart';
import 'package:booking_app/view/constants/intro/intro_text.dart';
import 'package:booking_app/view/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  late final PageController _pageController;
  final ValueNotifier<int> _currentPageIndex = ValueNotifier<int>(0);
  final _listImageIntro = [imageIntro1, imageIntro2, imageIntro3];

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    precacheImage(Image.asset(imageIntro1).image, context);
    precacheImage(Image.asset(imageIntro2).image, context);
    precacheImage(Image.asset(imageIntro3).image, context);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onNextIndex() {
    if (_currentPageIndex.value < 2) {
      _pageController.animateToPage(_currentPageIndex.value + 1,
          duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
    }
  }

  // screenHeight > 880 ? 380 : 360
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Stack(children: [
        ValueListenableBuilder(
            valueListenable: _currentPageIndex,
            builder: (context, value, _) {
              return AnimatedOpacity(
                opacity: 1,
                duration: const Duration(milliseconds: 200),
                child: Align(
                    alignment: screenHeight > 880
                        ? const Alignment(0, -0.7)
                        : const Alignment(0, -0.5),
                    child: Image.asset(_listImageIntro[value])),
              );
            }),
        Align(
          alignment: const Alignment(0, 0.5),
          child: Container(
            height: 500,
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.2),
                  Colors.white,
                ],
                begin: Alignment.topCenter,
                end: const Alignment(0, 0.8),
              ),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(0, 1),
          child: Container(
            height: screenHeight * 0.35,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 86, 105, 240),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight > 880 ? 30 : 25,
                ),
                _sliderText(
                  context,
                  controller: _pageController,
                  onPageChanged: (newValue) {
                    _currentPageIndex.value = newValue;
                  },
                ),
                _navigatorButton(context, onSkipClicked: () {
                  context.pushReplacementNamed(RoutesName.login);
                }, onNextClicked: () {
                  if (_currentPageIndex.value == 2) {
                    context.pushReplacementNamed(RoutesName.login);
                    return;
                  }
                  _onNextIndex();
                })
              ],
            ),
          ),
        )
      ]),
    );
  }

  Widget _sliderText(BuildContext context,
      {required PageController controller,
      required void Function(int)? onPageChanged}) {
    return Flexible(
      flex: 5,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: controller,
        itemCount: IntroText.content.length,
        onPageChanged: onPageChanged,
        itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: IntroText.content[index]),
      ),
    );
  }

  Widget _navigatorButton(BuildContext context,
      {required VoidCallback onSkipClicked,
      required VoidCallback onNextClicked}) {
    return Flexible(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: onSkipClicked,
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 20,
                ),
              ),
            ),
            ValueListenableBuilder(
                valueListenable: _currentPageIndex,
                builder: (context, value, _) {
                  return _indicationComp(value);
                }),
            TextButton(
              onPressed: onNextClicked,
              child: const Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _indicationComp(int currentIndex) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(
        3,
        (index) => AnimatedContainer(
          duration: const Duration(microseconds: 200),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: currentIndex == index ? Colors.white : Colors.grey,
            borderRadius: BorderRadius.circular(5),
          ),
          margin: const EdgeInsetsDirectional.symmetric(horizontal: 7),
        ),
      ),
    );
  }
}
