import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

import '../../../../home/persentation/views/home.dart';

class SplashViewbody extends StatefulWidget {
  const SplashViewbody({Key? key}) : super(key: key);

  @override
  State<SplashViewbody> createState() => _SplashViewbodyState();
}

class _SplashViewbodyState extends State<SplashViewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> sliding;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    sliding = Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.bounceOut));
    _animationController.forward();

    super.initState();
    goToHomePage();
  }

  void goToHomePage() {
    Future.delayed(const Duration(seconds: 3), () {
      // Get.to(() => const Homepage(),
      //     transition: Transition.cupertino,
      //     duration: const Duration(microseconds: 250));
      GoRouter.of(context).push(AppRouter.kHome);
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 4),
        SlidingText(sliding: sliding),
      ],
    );
  }
}

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.sliding,
  });

  final Animation<Offset> sliding;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: sliding,
        builder: (context, _) {
          return SlideTransition(
            position: sliding,
            child: const Text(
              "Read Free Books",
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
