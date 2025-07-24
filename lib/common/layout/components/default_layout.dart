import 'package:flutter/material.dart';
import 'package:todo/common/libs/color.dart';

class DefaultLayout extends StatelessWidget {
  const DefaultLayout({
    Key? key,
    required this.child,
    this.title,
    this.automaticallyImplyLeading = false,
    this.bottomNavigationBar,
    this.actions,
    this.backgroundColor,
  }) : super(key: key);

  final Widget child;
  final String? title;
  final bool? automaticallyImplyLeading;
  final Widget? bottomNavigationBar;
  final List<Widget>? actions;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title == null
          ? null
          : AppBar(
              title: Text(
                '$title',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
              centerTitle: false,
              elevation: 1,
              automaticallyImplyLeading: automaticallyImplyLeading!,
              backgroundColor: backgroundColor ?? PRIMARY_COLOR,
              foregroundColor: Colors.black,
              actions: actions,
            ),
      body: child,
      bottomNavigationBar:
          bottomNavigationBar == null ? null : bottomNavigationBar,
    );
  }
}
