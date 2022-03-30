import 'package:fazakir/data_source/local/hive_helper.dart';

import '../../bloc/praise_cubit/praise_cubit.dart';
import '../../bloc/praise_cubit/praise_state.dart';
import '../../injection_container.dart';
import 'praise_count.dart';
import 'praise_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Praise extends StatelessWidget {
  const Praise({Key? key}) : super(key: key);

  static const routeName = "/praise";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "اذكر الله يذكرك",
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt<PraiseCubit>()..getPraise(),
        child: BlocConsumer<PraiseCubit, PraiseState>(
          listener: (context, state) {
            if (state is PraiseError) {
              Center(child: Text(state.message));
            }
          },
          builder: (context, state) {
            var cubit = PraiseCubit.get(context);
            if (state is PraiseLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is PraiseScasses) {
              return Column(
                children: [
                  PraiseCount(sum: HiveHelper().getData("sum") ?? 0),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: cubit.praiseModel!.praise.length,
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 2.5 / 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                        ),
                        itemBuilder: (context, index) {
                          return PraiseName(
                            praiseData: cubit.praiseModel!.praise[index],
                          );
                        },
                      ),
                    ),
                  )
                ],
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
