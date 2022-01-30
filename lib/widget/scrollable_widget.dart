import 'package:flutter/material.dart';

class ScrollableWidget extends StatelessWidget {
  final Widget child;
  const ScrollableWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: child,
      ),
    );
  }
}
