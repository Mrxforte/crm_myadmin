import 'package:ag_crm_myadmin/views/verify_email/screens/verify_email_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  var controller = PageController();

  // next button handler
  void nextHandler(int index) {
    if (index < 2) {
      controller.nextPage(duration: Durations.medium1, curve: Curves.bounceIn);
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Hola")));
    }
  }

  // skip button handler

  void skipButtonHandler() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return VerifyEmailScreen();
        },
      ),
    );
  }

  int currentIndex = 0;

  // next button handler

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10, right: 10),
        child: FloatingActionButton(
          onPressed: () {
            nextHandler(currentIndex);
          },
          mini: true,
          shape: CircleBorder(),
          child: Icon(Icons.arrow_forward_ios),
        ),
      ),
      body: SizedBox(
        child: Stack(
          fit: StackFit.expand,
          children: [
            PageView(
              onPageChanged: onPageChanged,
              controller: controller,
              children: [
                // List of onBoarding Screens
                OnboardingWidget(
                  title: "Все проекты под контролем",
                  description:
                      "Следите за ходом всех ваших строительных объектов в одном месте. Отслеживайте этапы, сроки и документы в режиме реального времени.",
                  image: "assets/images/1.png",
                ),
                OnboardingWidget(
                  title: "Задачи и отчетность",
                  description:
                      "Ставьте задачи бригадам, принимайте работы и фиксируйте отчеты с фотографиями. Упростите коммуникацию и контроль на стройплощадке.",
                  image: "assets/images/2.png",
                ),
                OnboardingWidget(
                  title: "Документы и сметы всегда под рукой",
                  description:
                      "Храните все чертежи, сметы, акты и накладные в удобной базе. Быстрый поиск и доступ к нужному документу за пару секунд.",
                  image: "assets/images/3.png",
                ),
              ],
            ),

            // page indicator widget
            PageIndicatorWidget(controller: controller),
            // skip button
            Positioned(
              top: 70,
              right: 32,
              child: TextButton(
                onPressed: skipButtonHandler,
                child: Text("skip", style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageIndicatorWidget extends StatelessWidget {
  const PageIndicatorWidget({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      left: 32,
      child: SmoothPageIndicator(
        controller: controller,

        count: 3,
        effect: ScaleEffect(dotHeight: 6),
      ),
    );
  }
}

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image),
          SizedBox(height: 50),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 30),
          Text(
            description,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
