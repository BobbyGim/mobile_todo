import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FadeTransitionRouter extends CustomTransitionPage {
  FadeTransitionRouter({
    required super.child,
    super.key,
    super.restorationId,
    super.maintainState,
    super.fullscreenDialog,
    super.transitionDuration = Duration.zero,
    super.reverseTransitionDuration = Duration.zero,
  }) : super(
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            // 애니메이션 없이 즉시 표시
            return child;
          },
        );
}
