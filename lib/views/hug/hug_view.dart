import 'package:fazakir/bloc/hug_cubit/hug_cubit.dart';
import 'package:fazakir/bloc/hug_cubit/hug_state.dart';
import 'package:fazakir/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HugView extends StatelessWidget {
  const HugView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "مناسك الحج",
          style: TextStyle(fontFamily: "Arabic"),
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt<HugCubit>()..getHug(),
        child: BlocBuilder<HugCubit, HugState>(
          builder: (context, state) {
            if (state is HugLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is HugError) {
              return Center(child: Text(state.message));
            } else if (state is HugScasses) {
              return ListView.builder(
                  itemCount: state.hugModel.hugData.length,
                  itemBuilder: (_, index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 36.0,
                          child: Divider(
                            indent: 10.0,
                            thickness: 0.8,
                            endIndent: 10.0,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.6,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 9.0),
                                child: Container(
                                  width: 2.0,
                                  height:
                                      MediaQuery.of(context).size.height * 0.6,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondary
                                      .withOpacity(0.3),
                                ),
                              ),
                              ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount:
                                    state.hugModel.hugData[index].info!.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 15,
                                        decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            shape: BoxShape.circle),
                                      ),
                                      Expanded(
                                          child: Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 30.0,
                                                right: 10.0,
                                              ),
                                              child: Column(
                                                children: [
                                                  Text(state.hugModel
                                                      .hugData[index].name
                                                      .toString()),
                                                  Column(
                                                    children: [
                                                      ...state.hugModel
                                                          .hugData[index].info!
                                                          .map((e) => Text(e))
                                                    ],
                                                  )
                                                ],
                                              )))
                                    ],
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    );
                  });
            }
            return Container();
          },
        ),
      ),
    );
  }
}
