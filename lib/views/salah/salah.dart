import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/salah_cubit/salah_cubit.dart';
import '../../bloc/salah_cubit/salah_satate.dart';
import '../../injection_container.dart';
import '../../repository/salah_repositroy/salah_repository.dart';
import 'salah_name.dart';

class Salah extends StatelessWidget {
  const Salah({Key? key}) : super(key: key);

  static const routeName = "/salah";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "صلاتي",
            style: TextStyle(
                fontFamily: 'quran', fontSize: 30, fontWeight: FontWeight.w300),
          ),
        ),
        body: BlocProvider(
          create: (context) =>
              SalahCubit(salahRepositiry: getIt<SalahRepositiry>())..getSalah(),
          child: BlocBuilder<SalahCubit, SalahState>(
            builder: (context, state) {
              if (state is SalahLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is SalahError) {
                return Center(child: Text(state.message));
              } else if (state is SalahScasses) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView.builder(
                      itemCount: state.salahModel.salahData.length,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return SalahList(
                          sahalInfo: state.salahModel.salahData[index],
                        );
                      }),
                );
              }
              return Container();
            },
          ),
        ));
  }
}
