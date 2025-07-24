// default_shell_layout.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/common/layout/riverpod/shell_default_layout_provider.dart';
import 'package:todo/common/libs/color.dart';

class DefaultShellLayout extends ConsumerWidget {
  const DefaultShellLayout({super.key, required this.child, this.appBar});
  final Widget child;
  final PreferredSizeWidget? appBar;

  static const List<String> _routes = [
    '/home',
    '/todo',
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final location = GoRouter.of(context).location;
    final indexFromLocation = getBottomNavIndexFromLocation(location);
    final currentIndex = ref.watch(shellDefaultLayoutProvider);

    if (currentIndex != indexFromLocation) {
      Future.microtask(() {
        ref.read(shellDefaultLayoutProvider.notifier).state = indexFromLocation;
      });
    }

    return Scaffold(
      appBar: appBar,
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: PRIMARY_COLOR,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedFontSize: 12,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w900),
        onTap: (index) {
          if (index != currentIndex) {
            ref.read(shellDefaultLayoutProvider.notifier).state = index;
            context.go(_routes[index]);
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Icon(Icons.home),
            ),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Icon(Icons.edit),
            ),
            label: '할일',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Icon(Icons.person),
            ),
            label: '마이페이지',
          ),
        ],
      ),
    );
  }
}
