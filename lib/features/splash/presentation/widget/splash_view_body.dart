import 'package:bookly/core/constant/app_colors.dart';
import 'package:bookly/core/constant/assets.dart';
import 'package:flutter_riverpod/src/consumer.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends ConsumerStatefulWidget {
  const SplashViewBody({super.key});

  @override
  ConsumerState<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends ConsumerState<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController _logoController;
  late AnimationController _textController;

  late Animation<double> _textFadeAnimation;
  late Animation<double> _logoSlideAnimation;
  late Animation<double> _logoFadeAnimation;

  @override
  void initState() {
    super.initState();
    _initAnimations();

    _startAnimations();

    Future.delayed(Duration(milliseconds: 1800));
  }

  void _initAnimations() {
    _logoController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _logoSlideAnimation = Tween(begin: 38.0, end: 0.0).animate(
      CurvedAnimation(parent: _logoController, curve: Curves.linearToEaseOut),
    );
    _logoFadeAnimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _logoController, curve: Curves.linear));
    
    _textController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _textFadeAnimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _textController, curve: Curves.linear));
  }

  @override
  void dispose() {
    super.dispose();
    _logoController.dispose();
    _textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [_animatedLogo(), SizedBox(height: 10), _animatedText()],
      ),
    );
  }

  AnimatedBuilder _animatedText() {
    return AnimatedBuilder(
      animation: _textController,
      builder: (context, child) {
        return FadeTransition(
          opacity: _textFadeAnimation,
          child: Text('Read free books.', textAlign: TextAlign.center),
        );
      },
    );
  }

  AnimatedBuilder _animatedLogo() {
    return AnimatedBuilder(
      animation: _logoController,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _logoSlideAnimation.value),
          child: FadeTransition(
            opacity: _logoFadeAnimation,
            child: Image.asset(FixedAssets.logo),
          ),
        );
      },
    );
  }

  void _startAnimations() async {
    await Future.delayed(const Duration(milliseconds: 300));
    _logoController.forward();
    await Future.delayed(const Duration(milliseconds: 800));
    _textController.forward();
  }
}
