import 'package:flutter/material.dart';

class CountCard extends StatelessWidget {
  const CountCard({
    Key? key,
    required this.color,
    this.title,
    required this.count,
  }) : super(key: key);

  final Color color;
  final String? title;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: color,
          width: 4,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          title != null
              ? Text(
                  title!,
                  style: Theme.of(context).textTheme.bodySmall,
                )
              : const SizedBox(),
          Text(
            count,
            style: title != null
                ? Theme.of(context).textTheme.labelSmall
                : Theme.of(context).textTheme.displaySmall,
          ),
        ],
      ),
    );
  }
}
