import 'package:fazakir/models/zekr_model.dart';
import 'package:flutter/material.dart';

import 'count_card.dart';

class Zekr extends StatelessWidget {
  const Zekr({
    Key? key,
    required this.size,
    required this.zekrModel,
    required this.index,
  }) : super(key: key);

  final Size size;
  final ZekrModel zekrModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.5,
            blurRadius: 8,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.all(12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24.0),
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    flex: 1,
                    child: CountCard(
                      count: "${index + 1}",
                      color: const Color(0xffA582DB),
                      title: "الذكر",
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: CountCard(
                      count: "0",
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: CountCard(
                      count: zekrModel.count,
                      color: const Color(0xff7DA7E8),
                      title: "عدد المرات",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12.0),
            const Divider(),
            Expanded(
              flex: 6,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Container(
                  margin: const EdgeInsets.all(18.0),
                  child: Text(
                    zekrModel.text,
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const Divider(),
            Flexible(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 18.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        '${zekrModel.fadl}',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(height: 6.0),
                      Text(
                        zekrModel.source,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
