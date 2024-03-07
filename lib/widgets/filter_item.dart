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
    return Container(
      width: 150,
      height: 150,
      margin: const EdgeInsets.all(4),
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: onPressed,
                  icon: const Icon(
                    Icons.edit,
                    size: 18,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: Text(
                  value,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
