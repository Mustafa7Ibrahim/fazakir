import '../../bloc/zekr_cubit/zekr_cubit.dart';
import '../../models/zekr_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'count_card.dart';

class Zekr extends StatelessWidget {
  const Zekr({
    Key? key,
    required this.size,
    required this.zekrModel,
    required this.index,
    required this.total,
  }) : super(key: key);

  final Size size;
  final ZekrModel zekrModel;
  final int index;
  final int total;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ZekrCubit, int>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          width: size.width * 0.9,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
                blurRadius: 1,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          margin: const EdgeInsets.all(12.0),
          padding: const EdgeInsets.only(top: 12.0, right: 12.0, left: 12.0),
          child: InkWell(
            onTap: () =>
                context.read<ZekrCubit>().increment(int.parse(zekrModel.count)),
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
                          count: "${index + 1} / $total",
                          color: const Color(0xffA582DB),
                          title: "الذكر",
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: CountCard(
                          count: state.toString(),
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
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
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
              ],
            ),
          ),
        );
      },
    );
  }
}
