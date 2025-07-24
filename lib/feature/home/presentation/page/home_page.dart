import 'package:flutter/material.dart';
import 'package:todo/common/layout/components/default_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'Home',
      child: Column(
        children: [
          Text('Home'),
        ],
      ),
    );
  }
}
