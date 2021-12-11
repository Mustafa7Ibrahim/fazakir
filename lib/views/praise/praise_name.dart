import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:fazakir/models/praise_model.dart';

class PraiseName extends StatelessWidget {
  const PraiseName({
    Key? key,
    required this.onCount,
    required this.count,
    required this.praiseData,
  }) : super(key: key);
  final VoidCallback onCount;
  final int count;
  final PraiseData praiseData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(25.0),
      onTap: onCount,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.only(top: 20.0),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
                blurRadius: 1,
                offset: const Offset(0, 3),
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: () {
                  log("mohamed");
                },
                child: const Icon(Icons.info_outline)),
            Expanded(
              child: Center(
                child: Text(
                  "${praiseData.name}",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
            const Divider(),
            Center(child: Text("$count"))
          ],
        ),
      ),
    );
  }
}
