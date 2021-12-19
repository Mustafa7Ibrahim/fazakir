import 'package:fazakir/bloc/praise_cubit/praise_cubit.dart';
import 'package:fazakir/bloc/zekr_cubit/zekr_cubit.dart';
import 'package:fazakir/models/praise_model.dart';
import 'package:fazakir/views/praise/praise_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PraiseName extends StatelessWidget {
  const PraiseName({
    Key? key,
    required this.praiseData,
  }) : super(key: key);

  final PraiseData praiseData;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ZekrCubit(),
      child: BlocConsumer<ZekrCubit, int>(
        listener: (context, state) {},
        builder: (context, state) {
          return InkWell(
            borderRadius: BorderRadius.circular(15.0),
            onTap: () {
              context.read<PraiseCubit>().praiseCount();
              context.read<ZekrCubit>().incrementWithoutMaxNumber();
            },
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context)
                        .colorScheme
                        .secondary
                        .withOpacity(0.3),
                    blurRadius: 1,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () => Navigator.pushNamed(
                            context,
                            PraiseInfo.routeName,
                          ),
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
                  Center(child: Text(state.toString())),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
