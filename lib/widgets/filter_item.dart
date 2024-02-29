import 'package:flutter/material.dart';

class FilterItem extends StatelessWidget {
  final String title;
  final String value;
  final VoidCallback onPressed;

  const FilterItem({
    super.key,
    required this.title,
    required this.value,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Card(
        elevation: 5,
        child: Column(),
      ),
    );
  }
}