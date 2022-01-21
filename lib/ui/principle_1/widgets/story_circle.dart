import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({
    Key? key,
    required this.name,
    required this.color,
  }) : super(key: key);

  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Semantics(
        label: name,
        child: Container(
          margin: EdgeInsets.all(8),
          height: 50,
          width: 50,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        ),
      ),
    );
  }
}
