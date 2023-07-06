import 'package:booking_app/constants/intro_text.dart';
import 'package:booking_app/contoller/intro/image_controller.dart';
import 'package:booking_app/contoller/intro/indicator_number.dart';
import 'package:booking_app/contoller/intro/page_builder_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/intro/indicator_component.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PageBuilderController());
    final screenHeight = MediaQuery.sizeOf(context).height;
    final currentNumber = Get.put(IndicatorNumber());
    final imageController = Get.put(ImageController());
    return Scaffold(
      body: Stack(children: [
        Obx(() => AnimatedOpacity(
              opacity: 1,
              duration: const Duration(milliseconds: 200),
              child: Align(
                alignment: screenHeight > 880
                    ? const Alignment(0, -0.7)
                    : const Alignment(0, -0.5),
                child: Image.asset(
                  imageController.imagePath[currentNumber.currentNumber.value],
                  width: screenHeight > 880 ? 380 : 360,
                ),
              ),
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
                          onPressed: () {},
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
                            controller.nextIndex();
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
