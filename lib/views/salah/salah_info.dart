import 'package:flutter/material.dart';

class SalahInfo extends StatelessWidget {
  const SalahInfo({
    Key? key,
    required this.data,
  }) : super(key: key);
  final String data;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 20,
          height: 15,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              shape: BoxShape.circle),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(
            bottom: 30.0,
            right: 10.0,
          ),
          child: Text(
            data,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ))
      ],
    );
  }
}
