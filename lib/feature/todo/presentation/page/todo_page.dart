import 'package:flutter/material.dart';
import 'package:todo/common/layout/components/default_layout.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: Column(
        children: [
          Text('Todo'),
        ],
      ),
    );
  }
}
