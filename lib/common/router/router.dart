import 'package:go_router/go_router.dart';
import 'package:todo/common/layout/components/shell_default_layout.dart';
import 'package:todo/common/router/components/fade_transition_router.dart';
import 'package:todo/feature/home/presentation/page/home_page.dart';
import 'package:todo/feature/todo/presentation/page/todo_page.dart';

final router = GoRouter(
  initialLocation: "/home",
  routes: [
    ShellRoute(
      builder: (context, state, child) => DefaultShellLayout(
        child: child,
      ),
      routes: [
        GoRoute(
          path: '/home',
          pageBuilder: (context, state) => FadeTransitionRouter(
            child: HomePage(),
          ),
        ),
        GoRoute(
          path: '/todo',
          pageBuilder: (context, state) => FadeTransitionRouter(
            child: TodoPage(),
          ),
        ),
      ],
    ),
  ],
);
