import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';

part 'shell_default_layout_provider.g.dart';

int getBottomNavIndexFromLocation(String location) {
  switch (location) {
    case '/home':
      return 0;
    case '/todo':
      return 1;
    case '/monthly':
      return 2;
    default:
      return 0; // 기본값
  }
}

@riverpod
class ShellDefaultLayout extends _$ShellDefaultLayout {
  @override
  int build() {
    return 0;
  }

  void setIndex(int index) {
    state = index;
  }

  void updateIndexFromLocation(String location) {
    final newIndex = getBottomNavIndexFromLocation(location);
    if (state != newIndex) {
      state = newIndex;
    }
  }
}
