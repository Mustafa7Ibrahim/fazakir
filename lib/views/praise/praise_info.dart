import 'package:flutter/material.dart';

import '../../models/praise_model.dart';

class PraiseInfo extends StatelessWidget {
  static const routeName = "/praise_info";
  const PraiseInfo({Key? key, required this.praiseData}) : super(key: key);

  final PraiseData praiseData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${praiseData.name}",
            style: Theme.of(context).textTheme.headline5),
      ),
      body: Container(
        margin: const EdgeInsets.all(30.0),
        padding: const EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
              blurRadius: 1,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${praiseData.info}",
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const Divider(),
            Text(
              "${praiseData.mening}",
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
