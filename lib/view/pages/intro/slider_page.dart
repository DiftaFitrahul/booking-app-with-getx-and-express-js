import 'package:booking_app/view/constants/intro_text.dart';
import 'package:booking_app/getx/intro/image_controller.dart';
import 'package:booking_app/getx/intro/indicator_number.dart';
import 'package:booking_app/getx/intro/page_builder_controller.dart';
import 'package:booking_app/view/pages/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/intro/indicator_component.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final imageController2 = Get.put(ImageController());

  @override
  void didChangeDependencies() {
    precacheImage(imageController2.imageIntro[0].image, context);
    precacheImage(imageController2.imageIntro[1].image, context);
    precacheImage(imageController2.imageIntro[2].image, context);
    super.didChangeDependencies();
  }

  // screenHeight > 880 ? 380 : 360
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<PageBuilderController>();
    final screenHeight = MediaQuery.sizeOf(context).height;
    final currentNumber = Get.find<IndicatorNumber>();
    return Scaffold(
      body: Stack(children: [
        Obx(() => AnimatedOpacity(
              opacity: 1,
              duration: const Duration(milliseconds: 200),
              child: Align(
                  alignment: screenHeight > 880
                      ? const Alignment(0, -0.7)
                      : const Alignment(0, -0.5),
                  child: imageController2
                      .imageIntro[currentNumber.currentNumber.value]),
            )),
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
                Flexible(
                  flex: 5,
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: controller.pageController,
                    itemCount: IntroText.content.length,
                    onPageChanged: (value) {
                      currentNumber.currentNumber.value = value;
                    },
                    itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: IntroText.content[index]),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            );
                          },
                          child: const Text(
                            'Skip',
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Obx(
                          () => IndicatorComponent(
                            currentIndex: currentNumber.currentNumber.value,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            if (currentNumber.currentNumber.value < 2) {
                              controller.nextIndex();
                            } else {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginPage(),
                                ),
                              );
                            }
                          },
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
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
